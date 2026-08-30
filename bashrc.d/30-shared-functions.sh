#!/usr/bin/env bash

alert() {
  local status=$?
  local icon
  local cmd
  if [ "$status" -eq 0 ]; then
    icon=terminal
  else
    icon=error
  fi
  cmd=$(history | tail -n1 | sed -e 's/^[[:space:]]*[0-9]\+[[:space:]]*//' -e 's/[;&|][[:space:]]*alert$//')
  notify-send --urgency=low -i "$icon" "$cmd"
}

__git_repo_reminder() {
  command -v git >/dev/null 2>&1 || return 0
  GRR=$(git rev-parse --show-toplevel 2>/dev/null)
  if [ -n "$GRR" ]; then
    if [[ "${__LAST_GRR:-}" != "$GRR" ]]; then
      if [ -n "${__LAST_GRR:-}" ]; then
        echo "Leaving Git repository: consider running 'git push'"
      fi
      echo "Entered Git repository: consider running 'git pull'"
      __LAST_GRR="$GRR"
    fi
  else
    if [ -n "${__LAST_GRR:-}" ]; then
      echo "Leaving Git repository: consider running 'git push'"
      unset __LAST_GRR
    fi
  fi
}
PROMPT_COMMAND="__git_repo_reminder${PROMPT_COMMAND:+;$PROMPT_COMMAND}"

dl() {
  local out=''
  local quiet=0
  local verbose=0
  local url=''
  local to_stdout=0
  local no_fallback=0
  local use_aria2=1
  local use_curl=1
  local use_wget=1
  local use_wget2=1
  local tmp_file=''
  local aria2_option=''
  local curl_option=''
  local wget_option=''
  local wget2_option=''
  # shellcheck disable=2016
  local msg='Usage: dl [-h|--help] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <URL>
Global flags: $DLFLAGS'

  # shellcheck disable=2086
  set -- ${DLFLAGS:-} "$@"

  while [ $# -gt 0 ]; do
    case "$1" in
      -h | --help)
        echo "$msg"
        return 0
        ;;
      -o | --output)
        out="$2"
        shift 2
        ;;
      -O | --stdout)
        to_stdout=1
        shift
        ;;
      -q | --quiet)
        quiet=1
        shift
        ;;
      -v | --verbose)
        verbose=1
        shift
        ;;
      -a | --aria2)
        use_aria2=1
        use_curl=0
        use_wget=0
        use_wget2=0
        shift
        ;;
      -A | --no-aria2)
        use_aria2=0
        shift
        ;;
      -c | --curl)
        use_curl=1
        use_aria2=0
        use_wget=0
        use_wget2=0
        shift
        ;;
      -C | --no-curl)
        use_curl=0
        shift
        ;;
      -w | --wget)
        use_wget=1
        use_aria2=0
        use_curl=0
        use_wget2=0
        shift
        ;;
      -W | --no-wget)
        use_wget=0
        shift
        ;;
      -w2 | --wget2)
        use_wget2=1
        use_aria2=0
        use_curl=0
        use_wget=0
        shift
        ;;
      -W2 | --no-wget2)
        use_wget2=0
        shift
        ;;
      --no-fallback)
        no_fallback=1
        shift
        ;;
      --aria2_option)
        aria2_option+=" $2"
        shift 2
        ;;
      --curl_option)
        curl_option+=" $2"
        shift 2
        ;;
      --wget_option)
        wget_option+=" $2"
        shift 2
        ;;
      --wget2_option)
        wget2_option+=" $2"
        shift 2
        ;;
      --)
        shift
        break
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "$msg" >&2
        return 2
        ;;
      *)
        url="$1"
        shift
        ;;
    esac
  done

  if [ -z "$url" ]; then
    echo "Error: no URL provided" >&2
    echo "$msg" >&2
    return 2
  fi

  if [ -n "$out" ] && [ "$to_stdout" -eq 0 ]; then
    mkdir -p "$(dirname "$out")" || return 1
  fi

  try_aria2() {
    command -v aria2c >/dev/null 2>&1 || return 127
    local -a opts=()
    [ "$quiet" -eq 1 ] && opts+=(-q)
    [ "$verbose" -eq 1 ] && opts+=(-v)

    if [ "$to_stdout" -eq 1 ]; then
      tmp_file=$(mktemp "${TMPDIR:-/tmp}/dl.XXXXXXXXXX") || return 1
      rm -f "$tmp_file"
      # shellcheck disable=2086
      aria2c "${opts[@]}" $aria2_option -o "$(basename "$tmp_file")" -d "$(dirname "$tmp_file")" -- "$url"
      cat "$tmp_file"
      rm -f "$tmp_file"
    elif [ -n "$out" ]; then
      # shellcheck disable=2086
      aria2c "${opts[@]}" $aria2_option -o "$out" -- "$url"
    else
      # shellcheck disable=2086
      aria2c "${opts[@]}" $aria2_option "$url"
    fi
  }

  try_curl() {
    command -v curl >/dev/null 2>&1 || return 127
    local opts=(-fL)
    [ "$quiet" -eq 1 ] && opts+=(-sS)
    [ "$verbose" -eq 1 ] && opts+=(-v)

    if [ "$to_stdout" -eq 1 ]; then
      # shellcheck disable=2086
      curl "${opts[@]}" $curl_option "$url"
    elif [ -n "$out" ]; then
      # shellcheck disable=2086
      curl "${opts[@]}" $curl_option -o "$out" -- "$url"
    else
      # shellcheck disable=2086
      curl "${opts[@]}" $curl_option -O "$url"
    fi
  }

  try_wget() {
    command -v wget >/dev/null 2>&1 || return 127
    local -a opts=()
    [ "$quiet" -eq 1 ] && opts+=(-q)
    [ "$verbose" -eq 1 ] && opts+=(-v)

    if [ "$to_stdout" -eq 1 ]; then
      # shellcheck disable=2086
      wget "${opts[@]}" $wget_option -O - -- "$url"
    elif [ -n "$out" ]; then
      # shellcheck disable=2086
      wget "${opts[@]}" $wget_option -O "$out" -- "$url"
    else
      # shellcheck disable=2086
      wget "${opts[@]}" $wget_option "$url"
    fi
  }

  try_wget2() {
    command -v wget2 >/dev/null 2>&1 || return 127
    local -a opts=()
    [ "$quiet" -eq 1 ] && opts+=(-q)
    [ "$verbose" -eq 1 ] && opts+=(-v)

    if [ "$to_stdout" -eq 1 ]; then
      # shellcheck disable=2086
      wget2 "${opts[@]}" $wget2_option -O - -- "$url"
    elif [ -n "$out" ]; then
      # shellcheck disable=2086
      wget2 "${opts[@]}" $wget2_option -O "$out" -- "$url"
    else
      # shellcheck disable=2086
      wget2 "${opts[@]}" $wget2_option "$url"
    fi
  }

  local rc=1

  if [ "$use_wget" -eq 1 ]; then
    if try_wget; then
      return 0
    fi
    rc=$?
    [ "$no_fallback" -eq 1 ] && return "$rc"
  fi

  if [ "$use_curl" -eq 1 ]; then
    if try_curl; then
      return 0
    fi
    rc=$?
    [ "$no_fallback" -eq 1 ] && return "$rc"
  fi

  if [ "$use_wget2" -eq 1 ]; then
    if try_wget2; then
      return 0
    fi
    rc=$?
    [ "$no_fallback" -eq 1 ] && return "$rc"
  fi

  if [ "$use_aria2" -eq 1 ]; then
    if try_aria2; then
      return 0
    fi
    rc=$?
    [ "$no_fallback" -eq 1 ] && return "$rc"
  fi

  return "$rc"
}

gh_release() {
  local -a dl_args=()
  local -a out_args=()
  local quiet=0
  local verbose=0
  local regex=0
  local github=1
  local codeberg=0
  local repo=''
  local file=''
  local name=''
  local tag=''
  local index=''
  local msg='Usage: gh_release [-h|--help] [-g|--glob] [-r|--regex] [-gh|--github] [-cb|--codeberg] [-n|--name release_name_pattern] [-t|--tag release_tag_name_pattern] [-i|--index asset_index] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <user/repo or repo URL> [asset pattern]
If both -g|--glob and -r|--regex are not supplied, glob will be used.
If repo is provided as URL, GitHub/Codeberg will be inferred from it.
If both -gh|--github and -cb|--codeberg are not supplied and repo is provided as user/repo, GitHub will be used.
If release is not specified, latest release is used.
Example 0:
gh_release cli/cli '"'"'gh_*_linux_amd64.deb'"'"'
gh_release https://github.com/cli/cli/ '"'"'gh_*_linux_amd64.deb'"'"'
gh_release -r cli/cli '"'"'^gh_.*_linux_amd64\.deb$'"'"'
gh_release -r github.com/cli/cli/ '"'"'^gh_.*_linux_amd64\.deb$'"'"'
Example 1:
gh_release github.com/cli/cli -n '"'"'*CLI 2.85.0*'"'"' '"'"'gh_*_linux_amd64.deb'"'"'
gh_release github.com/cli/cli -n '"'"'*CLI 2.85.0*'"'"' -i 4
gh_release -r github.com/cli/cli -n '"'"'.*CLI 2\.85\.0.*'"'"' '"'"'^gh_.*_linux_amd64\.deb$'"'"'
Example 2:
gh_release --codeberg Codeberg/pages-server '"'"'codeberg-pages-server-*-debian-x86_64.tar.gz'"'"'
gh_release codeberg.org/Codeberg/pages-server '"'"'codeberg-pages-server-*-debian-x86_64.tar.gz'"'"''

  while [ $# -gt 0 ]; do
    case "$1" in
      -h | --help)
        echo "$msg"
        shift
        ;;
      -g | --glob)
        regex=0
        shift
        ;;
      -r | --regex)
        regex=1
        shift
        ;;
      -gh | --github)
        github=1
        codeberg=0
        shift
        ;;
      -cb | --codeberg)
        github=0
        codeberg=1
        shift
        ;;
      -q | --quiet)
        quiet=1
        dl_args+=("$1")
        shift
        ;;
      -v | --verbose)
        verbose=1
        dl_args+=("$1")
        shift
        ;;
      -n | --name)
        name="$2"
        shift 2
        ;;
      -t | --tag)
        tag="$2"
        shift 2
        ;;
      -i | --index)
        index="$2"
        shift 2
        ;;
      -a | --aria2 | -A | --no-aria2 | -c | --curl | -C | --no-curl | -w | --wget | -W | --no-wget | -w2 | --wget2 | -W2 | --no-wget2 | --no-fallback)
        dl_args+=("$1")
        shift
        ;;
      --aria2_option | --curl_option | --wget_option | --wget2_option)
        dl_args+=("$1")
        dl_args+=("$2")
        shift 2
        ;;
      -O | --stdout)
        out_args+=("$1")
        shift
        ;;
      -o | --output)
        out_args+=("$1")
        out_args+=("$2")
        shift 2
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "$msg" >&2
        return 1
        ;;
      *)
        if [ -z "$repo" ]; then
          repo="$1"
        else
          file="$1"
        fi
        shift
        ;;
    esac
  done

  repo="${repo#https://}"
  repo="${repo#http://}"
  repo="${repo%.git}"
  repo="${repo%/}"
  if [[ "$repo" == */*/* ]]; then
    if [[ "$repo" != "${repo#github.com/}" ]]; then
      github=1
      codeberg=0
      repo="${repo#github.com/}"
    fi
    if [[ "$repo" != "${repo#codeberg.org/}" ]]; then
      github=0
      codeberg=1
      repo="${repo#codeberg.org/}"
    fi
  fi

  [[ "$repo" != */* ]] && echo "Error: unsupported repo format or git host. Expect user/repo or URL" >&2

  local api
  [ "$github" -eq 1 ] && api='https://api.github.com/repos'
  [ "$codeberg" -eq 1 ] && api='https://codeberg.org/api/v1/repos'

  if [ -z "$repo" ]; then
    echo "Error: no repo provided. Expect user/repo or URL" >&2
    echo "$msg" >&2
    return 1
  fi

  if ! echo "$repo" | grep -Eq '^[a-zA-Z0-9_.-]+/[a-zA-Z0-9_.-]+$'; then
    echo "Error: invalid repo format. Expect user/repo or URL" >&2
    echo "$msg" >&2
    return 1
  fi

  [ "$quiet" -eq 0 ] && echo "Fetching release for $repo..." >&2

  local file_regex
  if [ "$regex" -eq 0 ]; then
    if [ -n "$file" ]; then
      file_regex=$(printf '%s' "$file" | sed 's/\\/\\\\\\\\/g; s/\[/\\\\[/g; s/\]/\\\\]/g; s/\./[.]/g; s/\*/.*/g; s/\?/./g; s/(/\\\\(/g; s/)/\\\\)/g; s/|/\\\\|/g; s/+/\\\\+/g; s/\$/\\\\$/g; s/\^/\\\\^/g')
      file_regex="^${file_regex}\$"
    fi
  else
    file_regex=$file
  fi

  local release_json
  if [ -n "$name" ] || [ -n "$tag" ]; then
    release_json=$(dl -O "${dl_args[@]}" "$api/$repo/releases" 2>/dev/null)
    if [ -z "$release_json" ]; then
      echo "Error: failed to fetch releases or repo not found" >&2
      return 1
    fi
  else
    release_json=$(dl -O "${dl_args[@]}" "$api/$repo/releases/latest" 2>/dev/null)
    if [ -z "$release_json" ] || [ "$release_json" = "null" ]; then
      echo "Error: no releases found or repo not found" >&2
      return 1
    fi
  fi

  if [ -n "$name" ]; then
    local name_regex
    if [ "$regex" -eq 0 ]; then
      name_regex=$(printf '%s' "$name" | sed 's/\\/\\\\\\\\/g; s/\[/\\\\[/g; s/\]/\\\\]/g; s/\./[.]/g; s/\*/.*/g; s/\?/./g; s/(/\\\\(/g; s/)/\\\\)/g; s/|/\\\\|/g; s/+/\\\\+/g; s/\$/\\\\$/g; s/\^/\\\\^/g')
      name_regex="^${name_regex}\$"
    else
      name_regex="$name"
    fi

    release_json=$(echo "$release_json" | jq -r --arg NAME "$name_regex" 'map(select(.name != null and (.name | test($NAME)))) | max_by(.published_at)')

    if [ "$release_json" = "null" ] || [ -z "$release_json" ]; then
      echo "Error: no release found with name matching: $name" >&2
      return 1
    fi
  fi

  if [ -n "$tag" ]; then
    local tag_regex
    if [ "$regex" -eq 0 ]; then
      tag_regex=$(printf '%s' "$tag" | sed 's/\\/\\\\\\\\/g; s/\[/\\\\[/g; s/\]/\\\\]/g; s/\./[.]/g; s/\*/.*/g; s/\?/./g; s/(/\\\\(/g; s/)/\\\\)/g; s/|/\\\\|/g; s/+/\\\\+/g; s/\$/\\\\$/g; s/\^/\\\\^/g')
      tag_regex="^${tag_regex}\$"
    else
      tag_regex="$tag"
    fi

    release_json=$(echo "$release_json" | jq -r --arg TAG "$tag_regex" 'map(select(.tag_name != null and (.tag_name | test($TAG)))) | max_by(.published_at)')

    if [ "$release_json" = "null" ] || [ -z "$release_json" ]; then
      echo "Error: no release found with tag name matching: $tag" >&2
      return 1
    fi
  fi

  local urls
  urls=$(echo "$release_json" | jq -r --arg FILE "$file_regex" --arg INDEX "$index" 'if .assets then .assets | map(select(.name != null and ($FILE == "" or (.name | test($FILE))))) | if $INDEX != "" then [.[($INDEX|tonumber)]?] else . end | .[] | .browser_download_url else empty end' || true)

  if [ -z "$urls" ]; then
    echo "Error: no matching assets found" >&2
    return 1
  fi

  local count
  count=$(echo "$urls" | grep -cve '^[[:space:]]*$')

  if [ "$quiet" -eq 0 ]; then
    echo "Release: $(echo "$release_json" | jq -r '.name // .tag_name')" >&2

    if [ "$count" -gt 1 ]; then
      echo "Found $count matching assets. Downloading all" >&2
      if [ "$verbose" -eq 1 ]; then
        echo "$urls" | nl -w2 -s': ' | sed 's/^/  /' >&2
      fi
    elif [ "$verbose" -eq 1 ]; then
      echo "Found 1 matching asset:" >&2
      # shellcheck disable=2001
      echo "$urls" | sed 's/^/  /' >&2
    fi
  fi

  local success=true
  local downloaded=0
  while IFS= read -r url; do
    [ -z "$url" ] && continue

    downloaded=$((downloaded + 1))
    [ "$quiet" -eq 0 ] && echo "[$downloaded/$count] Downloading: $(basename "$url")" >&2

    if ! dl "${dl_args[@]}" "${out_args[@]}" "$url"; then
      echo "Error: failed to download $url" >&2
      success=false
    fi
  done <<<"$urls"

  if [ "$success" = false ]; then
    return 1
  elif [ "$quiet" -eq 0 ]; then
    echo "Download completed successfully" >&2
  fi
}

gh_file() {
  local -a dl_args=()
  local quiet=0
  local verbose=0
  local print_url=0
  local url=''

  while [ $# -gt 0 ]; do
    case "$1" in
      -h | --help)
        echo "Usage: gh_file [-h|--help] [-p|--print-url] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <GitHub file blob URL>"
        echo "Example: gh_file https://github.com/cli/cli/blob/trunk/README.md"
        return 0
        ;;
      -p | --print-url)
        print_url=1
        shift
        ;;
      -q | --quiet)
        quiet=1
        shift
        ;;
      -v | --verbose)
        verbose=1
        shift
        ;;
      -O | --stdout | -a | --aria2 | -A | --no-aria2 | -c | --curl | -C | --no-curl | -w | --wget | -W | --no-wget | -w2 | --wget2 | -W2 | --no-wget2 | --no-fallback)
        dl_args+=("$1")
        ;;
      -o | --output | --aria2_option | --curl_option | --wget_option | --wget2_option)
        dl_args+=("$1")
        dl_args+=("$2")
        shift 2
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "Usage: gh_file [-h|--help] [-p|--print-url] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <GitHub file blob URL>" >&2
        echo "Example: gh_file https://github.com/cli/cli/blob/trunk/README.md" >&2
        return 1
        ;;
      *)
        url="$1"
        shift
        ;;
    esac
  done

  case "$url" in
    */*/blob/*) ;;
    *)
      echo "Error: not a GitHub file blob URL" >&2
      return 1
      ;;
  esac

  url="${url#https://}"
  url="${url#http://}"
  url="${url#github.com/}"
  url="${url%/}"
  url=$(printf '%s' "$url" | sed -E 's#^([^/]+)/([^/]+)/blob/(.+)$#https://raw.githubusercontent.com/\1/\2/\3#')
  url=$(printf '%s' "$url" | sed 's#%2F#/#g')

  if [ "$print_url" -eq 1 ]; then
    echo "$url"
    return 0
  else
    [ "$quiet" -eq 0 ] && echo "Downloading: $url"
    dl "${dl_args[@]}" -- "$url"
  fi
}

# shellcheck disable=2120
cgrr() {
  if [ -n "${GRR:-}" ]; then
    cd "$GRR" || return
    # shellcheck disable=2086,2164
    [ -n "$1" ] && cd $1
  fi
}

ghauth() {
  gh auth login -p ssh -h github.com --with-token
}

glauth() {
  glab auth login -g ssh --hostname gitlab.com --stdin
}

ghcrpb() {
  gh repo create --public "$@"
}

glcrpb() {
  GLAB_NO_PROMPT=1 glab repo create -P -s "$@"
}

ghcrpv() {
  gh repo create --private "$@"
}

glcrpv() {
  GLAB_NO_PROMPT=1 glab repo create -p -s "$@"
}

ghcrpbcl() {
  gh repo create --public "$@"
  gh repo clone "${@: -1}"
}

glcrpbcl() {
  GLAB_NO_PROMPT=1 glab repo create -P -s "$@"
  glab repo clone "${@: -1}"
}

ghcrpvcl() {
  gh repo create --private "$@"
  gh repo clone "${@: -1}"
}

glcrpvcl() {
  GLAB_NO_PROMPT=1 glab repo create -p -s "$@"
  glab repo clone "${@: -1}"
}

ghcl() {
  gh repo clone "$@"
}

glcl() {
  glab repo clone "$@"
}

gpul() {
  local level="${1:-0}"
  local repo_dir=''
  if [ "$level" -eq 0 ]; then
    repo_dir=$(git rev-parse --show-toplevel 2>/dev/null)
    if [ -n "$repo_dir" ]; then
      echo "$repo_dir"
      (cd "$repo_dir" && git pull origin)
    else
      echo "Not in a Git repo."
    fi
  else
    local depth
    depth=$((level + 1))
    find . -mindepth "$depth" -maxdepth "$depth" -type d -name .git | while read -r gitdir; do
      repo_dir=$(dirname "$gitdir")
      echo "$repo_dir"
      (cd "$repo_dir" && git pull origin)
    done
  fi
}

gfup() {
  local level="${1:-0}"
  local repo_dir=''
  if [ "$level" -eq 0 ]; then
    repo_dir=$(git rev-parse --show-toplevel 2>/dev/null)
    if [ -n "$repo_dir" ]; then
      echo "$repo_dir"
      (cd "$repo_dir" && git pull origin)
    else
      echo "Not in a Git repo."
    fi
  else
    local depth
    depth=$((level + 1))
    find . -mindepth "$depth" -maxdepth "$depth" -type d -name .git | while read -r gitdir; do
      repo_dir=$(dirname "$gitdir")
      echo "$repo_dir"
      (
        cd "$repo_dir" && {
          git reset --hard
          git pull --rebase
          git clean -fd
        }
      )
    done
  fi
}

gh_delete_runs() {
  gh run list --json databaseId --limit 99999 -q '.[].databaseId' | xargs -IID gh api "repos/$(gh repo view --json nameWithOwner -q .nameWithOwner)/actions/runs/ID" -X DELETE
}

gad() {
  (
    cgrr
    git add .
  )
}

gcmd() {
  git commit -m "$(date -uIs)"
}

gac() {
  gad
  git commit -m "$1"
}

gacd() {
  gad
  gcmd
}

gacp() {
  gad
  git commit -m "$1"
  git push
}

gacdp() {
  gad
  gcmd
  git push
}

grm() {
  git rm -rf -- "${1:-*}"
}

gdifh() {
  if [ $# -eq 0 ]; then
    git diff HEAD~1 HEAD
  elif [ $# -eq 1 ]; then
    git diff HEAD~"$1" HEAD
  else
    local first="$1"
    local second="$2"
    shift 2
    git diff HEAD~"$first" HEAD~"$second" "$@"
  fi
}

gchh() {
  if [ $# -eq 0 ]; then
    git checkout HEAD~1
  else
    local first="$1"
    shift
    git checkout HEAD~"$first" "$@"
  fi
}

gchmn() {
  if [ $# -eq 0 ]; then
    git checkout main
  else
    local first="$1"
    shift
    git checkout main~"$first" "$@"
  fi
}

gchmr() {
  if [ $# -eq 0 ]; then
    git checkout master
  else
    local first="$1"
    shift
    git checkout master~"$first" "$@"
  fi
}

gchgp() {
  if [ $# -eq 0 ]; then
    git checkout gh-pages
  else
    local first="$1"
    shift
    git checkout gh-pages~"$first" "$@"
  fi
}

grbih() {
  if [ $# -eq 0 ]; then
    git rebase -i HEAD~1
  else
    local first="$1"
    shift
    git rebase -i HEAD~"$first" "$@"
  fi
}

grbimn() {
  if [ $# -eq 0 ]; then
    git rebase -i main~1
  else
    local first="$1"
    shift
    git rebase -i main~"$first" "$@"
  fi
}

grbimr() {
  if [ $# -eq 0 ]; then
    git rebase -i master~1
  else
    local first="$1"
    shift
    git rebase -i master~"$first" "$@"
  fi
}

grbigp() {
  if [ $# -eq 0 ]; then
    git rebase -i gh-pages~1
  else
    local first="$1"
    shift
    git rebase -i gh-pages~"$first" "$@"
  fi
}

gtr() {
  if [ $# -eq 0 ]; then
    echo "Usage: gtr <version> [-n|--notes 'notes'] [files...]"
    return 1
  fi
  local version="$1"
  shift
  local notes=''
  local repo=''
  local -a files=()

  while [ $# -gt 0 ]; do
    case "$1" in
      -n | --notes)
        shift
        if [ $# -eq 0 ]; then
          echo "Error: Missing notes after -n|--notes"
          return 1
        fi
        notes="$1"
        ;;
      *)
        files+=("$1")
        ;;
    esac
    shift
  done

  git tag -a "v$version" -m "Version $version release"
  git push origin "v$version"

  repo=$(git remote -v | grep origin | grep push | sed -E 's/^origin[ \t]*git@github\.com://; s/\.git[ \t]*\(push\)//')

  if [ -n "$notes" ]; then
    gh release create "v$version" --title "Version $version release" --notes "$notes" --repo "$repo" "${files[@]}"
  else
    gh release create "v$version" --title "Version $version release" --repo "$repo" --notes "" "${files[@]}"
  fi
}

git_upstream_pr() {
  if [ -z "$1" ]; then
    echo "Usage: git_upstream_pr <PR_NUMBER>"
    return 1
  fi
  git fetch upstream pull/"$1"/head:pr-"$1" || {
    echo "Fetch failed"
    return 1
  }
  git merge pr-"$1" || {
    echo "Merge conflict! Resolve manually."
    return 1
  }
  git push || {
    echo "Push failed"
    return 1
  }
  git branch -D pr-"$1"
}

__pv() {
  if command -v pv >/dev/null 2>&1; then
    pv
  else
    cat
  fi
}

compress_single() {
  local msg='Usage: compress_single [-h|--help]
compress_single [-t|--tar] [-n|--no-tar] [-p|--pad PAD] COMMAND SOURCE [TARGET]
If TARGET is not provided and PAD is provided, SOURCE concatenating PAD is used.
No tar is used by default.'
  local tar=0
  local pad=''
  local target=''
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -h | --help)
        echo "$msg"
        return 0
        ;;
      -t | --tar)
        tar=1
        shift
        ;;
      -n | --no-tar)
        tar=0
        shift
        ;;
      -p | --pad)
        if [ "$#" -lt 2 ]; then
          echo "$msg" >&2
          return 1
        fi
        pad="$2"
        shift 2
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
  done
  if [ "$#" -eq 3 ]; then
    target="$3"
  elif [ "$#" -eq 2 ] && [ -n "$pad" ]; then
    target="${2}${pad}"
  else
    echo "$msg" >&2
    return 1
  fi
  if [ "$tar" -eq 1 ]; then
    (
      set -o pipefail
      tar -cf - "$2" | __pv | $1 | __pv >"$target"
    )
  else
    (
      set -o pipefail
      $1 "$2" | __pv >"$target"
    )
  fi
}

split_file() {
  local bytes
  if [ -n "${SPLIT_SIZE:-}" ]; then
    bytes="$SPLIT_SIZE"
  else
    bytes="4000M"
  fi
  split -b "$bytes" -d -a 3 "$1" "$1.part."
}

compress_split() {
  # shellcheck disable=2016
  local msg='Usage: compress_split [-h|--help]
compress_split [-t|--tar] [-n|--no-tar] [-p|--pad PAD] [-b BYTES|--bytes BYTES] COMMAND SOURCE [TARGET]
If TARGET is not provided and PAD is provided, SOURCE concatenating PAD is used.
No tar is used by default.
If BYTES is not provided, $SPLIT_SIZE is used if set and 4000M is used otherwise.'
  local bytes
  local pad=''
  local target=''
  if [ -n "${SPLIT_SIZE:-}" ]; then
    bytes="$SPLIT_SIZE"
  else
    bytes="4000M"
  fi
  local tar=0
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -h | --help)
        echo "$msg"
        return 0
        ;;
      -t | --tar)
        tar=1
        shift
        ;;
      -n | --no-tar)
        tar=0
        shift
        ;;
      -p | --pad)
        if [ "$#" -lt 2 ]; then
          echo "$msg" >&2
          return 1
        fi
        pad="$2"
        shift 2
        ;;
      -b | --bytes)
        if [ "$#" -lt 2 ]; then
          echo "$msg" >&2
          return 1
        fi
        bytes="$2"
        shift 2
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
  done
  if [ "$#" -eq 3 ]; then
    target="$3"
  elif [ "$#" -eq 2 ] && [ -n "$pad" ]; then
    target="${2}${pad}"
  else
    echo "$msg" >&2
    return 1
  fi
  if [ "$tar" -eq 1 ]; then
    (
      set -o pipefail
      tar -cf - "$2" | __pv | $1 | __pv | split -b "$bytes" -d -a 3 - "$target.part."
    )
  else
    (
      set -o pipefail
      $1 "$2" | __pv | split -b "$bytes" -d -a 3 - "$target.part."
    )
  fi
}

bz2_single() {
  compress_single --tar --pad '.tar.bz2' 'bzip2 -9' "$@"
}

gz_single() {
  compress_single --tar --pad '.tar.gz' 'gzip -9' "$@"
}

xz_single() {
  compress_single --tar --pad '.tar.xz' 'xz -9' "$@"
}

tar_single() {
  compress_single --no-tar --pad '.tar' 'tar -cf -' "$@"
}

zip_single() {
  compress_single --no-tar --pad '.zip' 'zip -r -9 -' "$@"
}

bz2_split() {
  compress_split --tar --pad '.tar.bz2' 'bzip2 -9' "$@"
}

gz_split() {
  compress_split --tar --pad '.tar.gz' 'gzip -9' "$@"
}

xz_split() {
  compress_split --tar --pad '.tar.xz' 'xz -9' "$@"
}

tar_split() {
  compress_split --no-tar --pad '.tar' 'tar -cf -' "$@"
}

zip_split() {
  compress_split --no-tar --pad '.zip' 'zip -r -9 -' "$@"
}

bz2_single_all() {
  (
    shopt -s nullglob
    for f in *; do
      compress_single --tar --pad '.tar.bz2' 'bzip2 -9' "$f" "$@" && rm -- "$f"
    done
  )
}

gz_single_all() {
  (
    shopt -s nullglob
    for f in *; do
      compress_single --tar --pad '.tar.gz' 'gzip -9' "$f" "$@" && rm -- "$f"
    done
  )
}

xz_single_all() {
  (
    shopt -s nullglob
    for f in *; do
      compress_single --tar --pad '.tar.xz' 'xz -9' "$f" "$@" && rm -- "$f"
    done
  )
}

tar_single_all() {
  (
    shopt -s nullglob
    for f in *; do
      compress_single --no-tar --pad '.tar' 'tar -cf -' "$f" "$@" && rm -- "$f"
    done
  )
}

zip_single_all() {
  (
    shopt -s nullglob
    for f in *; do
      compress_single --no-tar --pad '.zip' 'zip -r -9 -' "$f" "$@" && rm -- "$f"
    done
  )
}

bz2_split_all() {
  (
    shopt -s nullglob
    for f in *; do
      compress_split --tar --pad '.tar.bz2' 'bzip2 -9' "$f" "$@" && rm -- "$f"
    done
  )
}

gz_split_all() {
  (
    shopt -s nullglob
    for f in *; do
      compress_split --tar --pad '.tar.gz' 'gzip -9' "$f" "$@" && rm -- "$f"
    done
  )
}

xz_split_all() {
  (
    shopt -s nullglob
    for f in *; do
      compress_split --tar --pad '.tar.xz' 'xz -9' "$f" "$@" && rm -- "$f"
    done
  )
}

tar_split_all() {
  (
    shopt -s nullglob
    for f in *; do
      compress_split --no-tar --pad '.tar' 'tar -cf -' "$f" "$@" && rm -- "$f"
    done
  )
}

zip_split_all() {
  (
    shopt -s nullglob
    for f in *; do
      compress_split --no-tar --pad '.zip' 'zip -r -9 -' "$f" "$@" && rm -- "$f"
    done
  )
}

extract_all_and() {
  local erar=0
  local ezip=0
  local etargz=0
  local etgz=0
  local egz=0
  local etarbz2=0
  local etbz2=0
  local ebz2=0
  local etarxz=0
  local etxz=0
  local exz=0
  while [ "$#" -gt 0 ]; do
    case "$1" in
      --erar | --exclude-rar)
        erar=1
        shift
        ;;
      --ezip | --exclude-zip)
        ezip=1
        shift
        ;;
      --etargz | --exclude-targz)
        etargz=1
        shift
        ;;
      --etgz | --exclude-tgz)
        etgz=1
        shift
        ;;
      --egz | --exclude-gz)
        egz=1
        shift
        ;;
      --etarbz2 | --exclude-tarbz2)
        etarbz2=1
        shift
        ;;
      --etbz2 | --exclude-tbz2)
        etbz2=1
        shift
        ;;
      --ebz2 | --exclude-bz2)
        ebz2=1
        shift
        ;;
      --etarxz | --exclude-tarxz)
        etarxz=1
        shift
        ;;
      --etxz | --exclude-txz)
        etxz=1
        shift
        ;;
      --exz | --exclude-xz)
        exz=1
        shift
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
  done
  [ "$#" -lt 2 ] && return 1
  (
    shopt -s globstar nullglob
    for f in "$1"/**/*; do
      [[ -f $f ]] || continue
      local file=${f##*/}
      local dir=${f%/*}
      [[ $dir == "$f" ]] && dir=.
      local un=''
      local -a cmd=()
      case $file in
        *.rar)
          [ "$erar" -eq 1 ] && continue
          un=${file%.rar}
          cmd=(unrar x)
          ;;
        *.zip)
          [ "$ezip" -eq 1 ] && continue
          un=${file%.zip}
          cmd=(unzip)
          ;;
        *.tar.gz)
          [ "$etargz" -eq 1 ] && continue
          un=${file%.tar.gz}
          cmd=(tar -xzf)
          ;;
        *.tgz)
          [ "$etgz" -eq 1 ] && continue
          un=${file%.tgz}
          cmd=(tar -xzf)
          ;;
        *.gz)
          [ "$egz" -eq 1 ] && continue
          un=${file%.gz}
          cmd=(gzip -d)
          ;;
        *.tar.bz2)
          [ "$etarbz2" -eq 1 ] && continue
          un=${file%.tar.bz2}
          cmd=(tar -xjf)
          ;;
        *.tbz2)
          [ "$etbz2" -eq 1 ] && continue
          un=${file%.tbz2}
          cmd=(tar -xjf)
          ;;
        *.bz2)
          [ "$ebz2" -eq 1 ] && continue
          un=${file%.bz2}
          cmd=(bzip2 -d)
          ;;
        *.tar.xz)
          [ "$etarxz" -eq 1 ] && continue
          un=${file%.tar.xz}
          cmd=(tar -xJf)
          ;;
        *.txz)
          [ "$etxz" -eq 1 ] && continue
          un=${file%.txz}
          cmd=(tar -xJf)
          ;;
        *.xz)
          [ "$exz" -eq 1 ] && continue
          un=${file%.xz}
          cmd=(xz -d)
          ;;
        *)
          continue
          ;;
      esac
      (
        cd "$dir" &&
          "${cmd[@]}" "$file" &&
          "${@:2}" "$un" &&
          rm -- "$file" &&
          rm -rf -- "$un"
      )
    done
  )
}

extract_all() {
  extract_all_and "$@" false
}

extract_all_and_bz2() {
  local -a args=()
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -p | --pad)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
  done
  extract_all_and "$@" bz2_single "${args[@]}"
}

extract_all_and_gz() {
  local -a args=()
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -p | --pad)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
  done
  extract_all_and "$@" gz_single "${args[@]}"
}

extract_all_and_xz() {
  local -a args=()
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -p | --pad)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
  done
  extract_all_and "$@" xz_single "${args[@]}"
}

extract_all_and_tar() {
  local -a args=()
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -p | --pad)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
  done
  extract_all_and "$@" tar_single "${args[@]}"
}

extract_all_and_zip() {
  local -a args=()
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -p | --pad)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
  done
  extract_all_and "$@" zip_single "${args[@]}"
}

extract_all_and_bz2_split() {
  local -a args=()
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -p | --pad)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      -b | --bytes)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
  done
  extract_all_and "$@" bz2_split "${args[@]}"
}

extract_all_and_gz_split() {
  local -a args=()
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -p | --pad)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      -b | --bytes)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
  done
  extract_all_and "$@" gz_split "${args[@]}"
}

extract_all_and_xz_split() {
  local -a args=()
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -p | --pad)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      -b | --bytes)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
  done
  extract_all_and "$@" xz_split "${args[@]}"
}

extract_all_and_tar_split() {
  local -a args=()
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -p | --pad)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      -b | --bytes)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
  done
  extract_all_and "$@" tar_split "${args[@]}"
}

extract_all_and_zip_split() {
  local -a args=()
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -p | --pad)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      -b | --bytes)
        if [ "$#" -lt 2 ]; then
          return 1
        fi
        args+=("$1" "$2")
        shift 2
        ;;
      --)
        shift
        break
        ;;
      *)
        break
        ;;
    esac
  done
  extract_all_and "$@" zip_split "${args[@]}"
}

remove_extension() {
  sed -E 's/^(.+)\.[^.]+$/\1/'
}

get_extension() {
  sed -E '/^\.?[^.]+$/d; s/^.+\.([^.]*)$/\1/'
}

ls_extension() {
  find . -type f | sed -n 's/.*\(\.[^.\/]*\)$/\1/p' | sort -u
}

ffmpeg_av1_opus() {
  if [ "$#" -lt 4 ]; then
    return
  fi
  local new="${5:-"$(echo "$4" | remove_extension)_ffmpeg_av1_$1_$2_opus_$3.mkv"}"
  if ! ffmpeg -n -i "$4" -c:v libsvtav1 -preset "$1" -crf "$2" -c:a libopus -vbr:a 1 -b:a "$3" "$new"; then
    rm -f -- "$new"
    return 1
  fi
}

ffmpeg_av1_lossless_flac() {
  if [ "$#" -eq 0 ]; then
    return
  fi
  local new="${2:-"$(echo "$1" | remove_extension)_ffmpeg_av1_lossless_flac.mkv"}"
  if ! ffmpeg -n -i "$1" -c:v libsvtav1 -svtav1-params lossless=1 -preset -2 -c:a flac "$new"; then
    rm -f -- "$new"
    return 1
  fi
}

ffmpeg_opus() {
  if [ "$#" -lt 2 ]; then
    return
  fi
  local new="${3:-"$(echo "$2" | remove_extension)_ffmpeg_opus_$1.opus"}"
  if ! ffmpeg -n -i "$2" -c:a libopus -vbr:a 1 -b:a "$1" "$new"; then
    rm -f -- "$new"
    return 1
  fi
}

ffmpeg_flac() {
  if [ "$#" -eq 0 ]; then
    return
  fi
  local new="${2:-"$(echo "$1" | remove_extension)_ffmpeg_flac.flac"}"
  if ! ffmpeg -n -i "$1" -c:a flac "$new"; then
    rm -f -- "$new"
    return 1
  fi
}

ffmpeg_segment() {
  if [ "$#" -lt 2 ]; then
    return
  fi
  ffmpeg -n -i "$2" -c copy -map 0 -segment_time "$1" -f segment -reset_timestamps 1 "${3:-"$(echo "$2" | remove_extension)_ffmpeg_%04d.$(echo "$2" | get_extension)"}"
}

ffmpeg_concat_auto() {
  local -a files=()
  if [ "$#" -eq 0 ]; then
    for f in *; do
      test -f "$f" && files+=("$f")
    done
  else
    files=("$@")
  fi
  ffmpeg -n -f concat -safe 0 -i <(printf "file '$PWD/%s'\n" "${files[@]}") -c copy "$(echo "${files[0]}" | remove_extension | sed -E 's/_ffmpeg_[0-9]+$//').$(echo "${files[0]}" | get_extension)"
}

ffmpeg_concat() {
  if [ "$#" -lt 2 ]; then
    return
  fi
  ffmpeg -n -f concat -safe 0 -i <(printf "file '$PWD/%s'\n" "${@:2}") -c copy "$1"
}

echo_non_ffmpeg() {
  while IFS= read -r -d '' f; do
    case "$f" in
      *ffmpeg_*) ;;
      *)
        echo "$f"
        ;;
    esac
  done < <(find . -type f -print0)
}

remove_non_ffmpeg() {
  while IFS= read -r -d '' f; do
    case "$f" in
      *ffmpeg_*) ;;
      *)
        rm -f -- "$f"
        ;;
    esac
  done < <(find . -type f -print0)
}

echo_ffmpeg() {
  while IFS= read -r -d '' f; do
    case "$f" in
      *ffmpeg_*)
        echo "$f"
        ;;
      *) ;;
    esac
  done < <(find . -type f -print0)
}

remove_ffmpeg() {
  while IFS= read -r -d '' f; do
    case "$f" in
      *ffmpeg_*)
        rm -f -- "$f"
        ;;
      *) ;;
    esac
  done < <(find . -type f -print0)
}

jxl_lossy() {
  if [ "$#" -lt 2 ]; then
    return
  fi
  local new="${3:-"$(echo "$2" | remove_extension).jxl"}"
  if ! cjxl -j 0 -e 10 -d "$1" "$2" "$new"; then
    rm -f -- "$new"
    return 1
  fi
}

jxl_lossless() {
  if [ "$#" -eq 0 ]; then
    return
  fi
  local new="${2:-"$(echo "$1" | remove_extension).jxl"}"
  if ! cjxl -j 1 -e 10 -d 0 "$1" "$new"; then
    rm -f -- "$new"
    return 1
  fi
}

multimedia_convert() {
  (
    shopt -s globstar nullglob
    for f in **/*; do
      [[ -f $f ]] || continue
      local file=${f##*/}
      local dir=${f%/*}
      [[ $dir == "$f" ]] && dir=.
      case ${file,,} in
        *_ffmpeg_av1_*_*_opus_*.mkv | *_ffmpeg_av1_lossless_flac*.mkv)
          continue
          ;;
        *.ico | *.flac | *.gif | *.opus)
          local ext="${file##*.}"
          ext="${ext,,}"
          if [[ ${file##*.} != "$ext" ]]; then
            if [[ -e "${f%.*}.${ext}" ]]; then
              printf 'Skipping: output exists: %s\n' "$f" >&2
              continue
            fi
            mv -- "$f" "${f%.*}.${ext}"
          fi
          ;;
        *.jpg | *.jpeg | *.png)
          local jxl="${file%.*}.jxl"
          if [[ -e "$dir/$jxl" ]]; then
            printf 'Skipping: output exists: %s\n' "$f" >&2
            continue
          fi
          (
            cd "$dir" &&
              jxl_lossy 1 "./$file" "./$jxl" &&
              rm -- "$file"
          )
          ;;
        *.avif | *.bmp | *.heic | *.heif | *.jp2 | *.tif | *.webp)
          local png="${file%.*}.png"
          if [[ -e "$dir/$png" ]]; then
            printf 'Skipping: intermediate png exists: %s\n' "$f" >&2
            continue
          fi
          local jxl="${file%.*}.jxl"
          if [[ -e "$dir/$jxl" ]]; then
            printf 'Skipping: output exists: %s\n' "$f" >&2
            continue
          fi
          (
            if cd "$dir"; then
              magick "./$file" "./$png" &&
                jxl_lossy 1 "./$png" "./$jxl" &&
                rm -- "$file"
              rm -f -- "$png"
            fi
          )
          ;;
        *.3gp | *.mov | *.vob | *.wmv)
          (
            cd "$dir" &&
              ffmpeg_av1_opus 4 40 24k "./$file" &&
              rm -- "$file"
          )
          ;;
        *.avi | *.mkv | *.mp4 | *.mts | *.webm)
          (
            cd "$dir" &&
              ffmpeg_av1_opus 4 32 72k "./$file" &&
              rm -- "$file"
          )
          ;;
        *.aac | *.mp3 | *.m4a | *.ogg)
          (
            cd "$dir" &&
              ffmpeg_opus 96k "./$file" &&
              rm -- "$file"
          )
          ;;
        *.wav)
          (
            cd "$dir" &&
              ffmpeg_flac "./$file" &&
              rm -- "$file"
          )
          ;;
        *)
          continue
          ;;
      esac
    done
  )
}

clean_file() {
  if [ $# -ne 0 ]; then
    files=("$@")
  else
    files=(*)
  fi
  for f in "${files[@]}"; do
    test -f "$f" && perl -i -pe 's/\x{FEFF}//g; s/\x{200B}//g; s/[\x00-\x08\x0B\x0C\x0E-\x1F\x7F]//g' -- "$f"
  done
}

latexmkc() {
  if command -v latexmk >/dev/null 2>&1; then
    latexmk -c
  else
    rm -f -- *.acn *.acr *.alg *.aux *.bbl *.blg *.fdb_latexmk *.fls *.glg *.glo *.gls *.idx *.ilg *.ind *.ist *.lof *.log *.lot *.maf *.mp *.mtc *.mtc1 *.nav *.nlo *.out *.pdfsync *.snm *.tmp *.toc *.top *.tui *.vrb
  fi
}

latexmkC() {
  if command -v latexmk >/dev/null 2>&1; then
    latexmk -C
  else
    latexmkc
    rm -f -- *.dvi *.hnt *.pdf *.ps *.synctex *.synctex.gz
  fi
}

latexci() {
  # shellcheck disable=2016
  local msg='latexci [-h|--help] [-m|--latexmk] [-n|--no-latexmk] [-o|--auto-latexmk] [-r|--reproducible] [-s|--no-reproducible] [-t|--auto-reproducible] [-l|--log log_file] [-c|--clean] [-d|--no-clean] [-e|--engine-times engine-times] engine [files]
--latexmk (default): Use latexmk -"$engine".
--no-latexmk: Use "$engine".
--auto-latexmk: Prefer latexmk -"$engine" and fallback to "$engine".
--reproducible (default): Compile reproducibly.
--no-reproducible: Compile normally.
--auto-reproducible: Prefer to compile reproducibly and fallback to compile normally.
--clean: Clean auxiliary files of each file after successful compilation and remove latexci_${engine}_*_log.txt if the whole run succeeds.
engine-times (default: 2): times to run "$engine" when not using latexmk.
log_file (default: latexci_${engine}_$(date +%s)_log.txt): name of log file. It is only used when there are warnings or errors. If file of the same name has existed, it will be deleted.
files (default: all **/*.tex): LaTeX files to compile.'
  # mk (latexmk), rp (reproducible): 0 auto, 1 must, 2 no
  local mk=1
  local rp=1
  local times=2
  local clean=1
  local log=''
  local -a args=()
  local -a files=()
  while [ $# -gt 0 ]; do
    case "$1" in
      -h | --help)
        echo "$msg"
        return 0
        ;;
      -m | --latexmk)
        mk=1
        shift
        ;;
      -n | --no-latexmk)
        mk=2
        shift
        ;;
      -o | --auto-latexmk)
        mk=0
        shift
        ;;
      -r | --reproducible)
        rp=1
        shift
        ;;
      -s | --no-reproducible)
        rp=2
        shift
        ;;
      -t | --auto-reproducible)
        rp=0
        shift
        ;;
      -l | --log)
        log="$2"
        shift 2
        ;;
      -e | --engine-times)
        if [[ ! $2 =~ ^[0-9]+$ ]] || (($2 < 1)); then
          echo "latexci error: engine-times must be a positive integer." >&2
          return 1
        fi
        times="$2"
        shift 2
        ;;
      -c | --clean)
        clean=1
        shift
        ;;
      -d | --no-clean)
        clean=0
        shift
        ;;
      --)
        shift
        args+=("$@")
        break
        ;;
      *)
        args+=("$1")
        shift
        ;;
    esac
  done
  local engine
  if [ "${#args[@]}" -eq 0 ]; then
    echo 'latexci error: engine required.' >&2
    return 1
  else
    engine="${args[0]}"
  fi
  local cwd
  cwd="$(pwd)"
  if [ "${#args[@]}" -ne 1 ]; then
    files=("${args[@]:1}")
  else
    mapfile -d '' -t files < <(
      find "$cwd" -type f -name '*.tex' -print0
    )
  fi
  if [ "${#files[@]}" -eq 0 ]; then
    echo "latexci warning: no .tex file found." >&2
    return 0
  fi
  [ -z "$log" ] && log="latexci_${engine}_$(date +%s)_log.txt"
  rm -f -- "$log"
  for f in "${files[@]}"; do
    local dir
    dir="$(dirname "$f")"
    if ! cd "$dir"; then
      echo "$f: can't cd $dir" >>"$cwd/$log"
      continue
    fi
    local file
    file="$(basename "$f")"
    local -a env_args=()
    local epoch=''
    if [ "$rp" -eq 1 ]; then
      epoch=$(command -v git >/dev/null 2>&1 && git log -1 --format=%ct -- "$file" 2>/dev/null)
      if [ -n "$epoch" ]; then
        env_args=(SOURCE_DATE_EPOCH="$epoch")
      else
        echo "$f: git log failed for and reproducible required" >>"$cwd/$log"
      fi
    elif [ "$rp" -eq 0 ]; then
      epoch=$(command -v git >/dev/null 2>&1 && git log -1 --format=%ct -- "$file" 2>/dev/null)
      if [ -n "$epoch" ]; then
        env_args=(SOURCE_DATE_EPOCH="$epoch")
      fi
    fi
    if [ "$mk" -ne 2 ] && command -v latexmk >/dev/null 2>&1; then
      if env "${env_args[@]}" latexmk -"$engine" -latexoption='-interaction=nonstopmode -halt-on-error' "$file"; then
        [ "$clean" -eq 1 ] && latexmkc
      else
        echo "$f: latexmk $engine failed" >>"$cwd/$log"
      fi
    elif [ "$mk" -ne 1 ] && command -v "$engine" >/dev/null 2>&1; then
      local fail=0
      local et="$times"
      while ((et > 0)); do
        if ! env "${env_args[@]}" "$engine" -interaction=nonstopmode -halt-on-error "$file"; then
          echo "$f: $engine failed" >>"$cwd/$log"
          fail=1
          break
        fi
        ((et--))
      done
      if [ "$fail" -eq 0 ]; then
        [ "$clean" -eq 1 ] && latexmkc
      fi
    else
      echo "$f: all allowed methods not executable" >>"$cwd/$log"
    fi
  done
  if [ "$mk" -eq 0 ] && ! command -v latexmk >/dev/null 2>&1; then
    echo "latexci warning: latexmk not executable, $engine used" >&2
  fi
  if [ -f "$cwd/$log" ]; then
    {
      echo "latexci log"
      echo "$cwd"
      date -uIs
    } >>"$cwd/$log"
    cat "$cwd/$log" >&2
    echo "latexci warning: failures logged to $cwd/${log}." >&2
    # shellcheck disable=2164
    cd "$cwd"
    return 1
  else
    [ "$clean" -eq 1 ] && rm -f -- "$cwd/latexci_${engine}"_*_log.txt
    # shellcheck disable=2164
    cd "$cwd"
  fi
}

xelatexci() {
  latexci xelatex "$@"
}

lualatexci() {
  latexci lualatex "$@"
}

match_round() {
  awk '{ n = gsub(/\(/, "("); m = gsub(/\)/, ")"); balance += n - m; printf "%2d %5d %s\n", balance, NR, $0
}' "$1"
}

match_square() {
  awk '{ n = gsub(/\[/, "["); m = gsub(/\]/, "]"); balance += n - m; printf "%2d %5d %s\n", balance, NR, $0
}' "$1"
}

match_curly() {
  awk '{ n = gsub(/\{/, "{"); m = gsub(/\}/, "}"); balance += n - m; printf "%2d %5d %s\n", balance, NR, $0
}' "$1"
}

update_vim_config() {
  (
    sh ~/.vim_runtime/update.sh
  )
}

update_nvim_config_full() {
  (
    bash ~/.config/nvim/full-update.sh
  )
}

update_nvim_config() {
  (
    sh ~/.config/nvim/update.sh
  )
}

update_lizzieyzy_config() {
  (
    mkdir -p "$HOME"/.local/share/lizzieyzy
    rm "$HOME"/.local/share/lizzieyzy/config.txt 2>/dev/null || true
    wget https://raw.githubusercontent.com/Willie169/bashrc/main/lizzieyzy/config.txt -O "$HOME"/.local/share/lizzieyzy/config.txt
    sed -i "s|\$((\$(nproc)/2))|$(($(nproc) / 2))|g; s|\$(nproc)|$(nproc)|g; s|\$HOME|$HOME|g; s|\$(hostname)|$(hostname)|g" "$HOME"/.local/share/lizzieyzy/config.txt
  )
}

update_cutechess_config() {
  (
    mkdir -p "$HOME"/.config/cutechess
    rm "$HOME"/.config/cutechess/engines.json 2>/dev/null || true
    wget https://raw.githubusercontent.com/Willie169/bashrc/main/cutechess/engines.json -O "$HOME"/.config/cutechess/engines.json
    sed -i "s|\$(nproc)|$(nproc)|g; s|\$HOME|$HOME|g" "$HOME"/.config/cutechess/engines.json
  )
}

update_sylvan_config() {
  (
    mkdir -p "$HOME"/.config/EterCyber
    rm "$HOME"/.config/EterCyber/engines.json 2>/dev/null || true
    wget https://raw.githubusercontent.com/Willie169/bashrc/main/sylvan/engines.json -O "$HOME"/.config/EterCyber/engines.json
    sed -i "s|\$(nproc)|$(nproc)|g; s|\$HOME|$HOME|g" "$HOME"/.config/EterCyber/engines.json
  )
}

lizzieyzy() {
  (
    cd "$HOME"/.local/share/lizzieyzy && java -jar lizzie-yzy.jar "$@"
  )
}

expdisp() {
  export DISPLAY="${1:-:0}"
}

undisp() {
  unset DISPLAY
}

xdgset() {
  export XDG_RUNTIME_DIR="$TMPDIR/runtime-root"
  mkdir -p "$XDG_RUNTIME_DIR"
  chmod 700 "$XDG_RUNTIME_DIR"
  if [ $# -ne 0 ]; then
    export DISPLAY="$1"
  fi
}

xclean() {
  for d in "$@"; do
    rm -f "$TMPDIR/.X${d}-lock" || true
    rm -f "$TMPDIR/.X11-unix/.X${d}" || true
    rm -f "$TMPDIR/.X11-unix/X${d}" || true
  done
}

clean_newline_file() {
  for f in "$@"; do
    sed -Ez -i 's/\r\n/\n/g; s/\n+$/\n/' "$f"
  done
}

clean_newline() {
  sed -Ez 's/\r\n/\n/g; s/\n+$/\n/'
}

ccp() {
  if command -v termux-clipboard-set >/dev/null 2>&1; then
    termux-clipboard-set
  elif [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    wl-copy
  else
    xclip -selection clipboard
  fi
}

cpt() {
  if command -v termux-clipboard-get >/dev/null 2>&1; then
    termux-clipboard-get
  elif [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    wl-paste
  else
    xclip -selection clipboard -o
  fi
}

# termux-clipboard-set and termux-clipboard-get can't run concurrently
clipsort() {
  local text=''
  text="$(cpt | sort | clean_newline)"
  echo "$text" | ccp
}

# termux-clipboard-set and termux-clipboard-get can't run concurrently
clipsortu() {
  local text=''
  text="$(cpt | sort -u | clean_newline)"
  echo "$text" | ccp
}

dfur() {
  if [ "$HOME" = '/data/data/com.termux/files/home' ] || [ "${PREFIX:-}" = '/data/data/com.termux/files/usr' ]; then
    df '/data/data/com.termux/files' "$@" | tail -n1 | awk '{print $3}'
  else
    df --output=used "$@" / | tail -n1
  fi
}

npmig() {
  local -a args=()
  local opt=''
  while [ $# -gt 0 ]; do
    case "$1" in
      -o | --opt)
        opt="$2"
        shift 2
        ;;
      --)
        shift
        args+=("$@")
        break
        ;;
      *)
        args+=("$1")
        shift
        ;;
    esac
  done
  local npm_allow
  npm_allow=$(npm config get allow-scripts)
  [[ "$npm_allow" == "undefined" ]] && npm_allow=
  npm_allow="$(printf '%s\n' "$npm_allow" | tr ',' '\n')"
  if [ "${#args[@]}" -ne 0 ]; then
    local npm_pkg
    printf -v npm_pkg '%s\n' "${args[@]}"
    npm_allow+=$'\n'"$npm_pkg"
  fi
  npm_allow="$(echo "$npm_allow" | sort -u | sed -Ez 's/^\n+//; s/\n+$//' | tr '\n' ',')"
  npm config set allow-scripts="$npm_allow" --location=user
  if [ "${#args[@]}" -ne 0 ]; then
    if [ -n "$opt" ]; then
      npm i -g "$opt" "${args[@]}"
    else
      npm i -g "${args[@]}"
    fi
  fi
  npm config get allow-scripts
}

npmuig() {
  [ "$#" -eq 0 ] && return
  local -a args=()
  local opt=''
  while [ $# -gt 0 ]; do
    case "$1" in
      -o | --opt)
        opt="$2"
        shift 2
        ;;
      --)
        shift
        args+=("$@")
        break
        ;;
      *)
        args+=("$1")
        shift
        ;;
    esac
  done
  [ "${#args[@]}" -eq 0 ] && return
  if [ -n "$opt" ]; then
    npm uninstall -g "$opt" "${args[@]}"
  else
    npm uninstall -g "${args[@]}"
  fi
  local npm_allow
  npm_allow=$(npm config get allow-scripts)
  [[ "$npm_allow" == "undefined" ]] && npm_allow=
  npm_allow+=','
  for p in "${args[@]}"; do
    npm_allow="${npm_allow//${p},/}"
  done
  npm_allow="${npm_allow%,}"
  npm config set allow-scripts="$npm_allow" --location=user
  npm config get allow-scripts
}

nv() {
  nvim "$@"
}

py() {
  python3 "$@"
}

httpp() {
  http-server -p "$@"
}

lbtr() {
  libretranslate "$@" &
}

yt-sub() {
  yt-dlp --write-subs --sub-format vtt --skip-download "$@"
}

gpp11() {
  g++ -std=c++11 "$@"
}

cpp11() {
  clang++ -std=c++11 "$@"
}

gpp111() {
  g++ -std=c++11 -O1 "$@"
}

cpp111() {
  clang++ -std=c++11 -O1 "$@"
}

gpp112() {
  g++ -std=c++11 -O2 "$@"
}

cpp112() {
  clang++ -std=c++11 -O2 "$@"
}

gpp113() {
  g++ -std=c++11 -O3 "$@"
}

cpp113() {
  clang++ -std=c++11 -O3 "$@"
}

gpp14() {
  g++ -std=c++14 "$@"
}

cpp14() {
  clang++ -std=c++14 "$@"
}

gpp141() {
  g++ -std=c++14 -O1 "$@"
}

cpp141() {
  clang++ -std=c++14 -O1 "$@"
}

gpp142() {
  g++ -std=c++14 -O2 "$@"
}

cpp142() {
  clang++ -std=c++14 -O2 "$@"
}

gpp143() {
  g++ -std=c++14 -O3 "$@"
}

cpp143() {
  clang++ -std=c++14 -O3 "$@"
}

gpp17() {
  g++ -std=c++17 "$@"
}

cpp17() {
  clang++ -std=c++17 "$@"
}

gpp171() {
  g++ -std=c++17 -O1 "$@"
}

cpp171() {
  clang++ -std=c++17 -O1 "$@"
}

gpp172() {
  g++ -std=c++17 -O2 "$@"
}

cpp172() {
  clang++ -std=c++17 -O2 "$@"
}

gpp173() {
  g++ -std=c++17 -O3 "$@"
}

cpp173() {
  clang++ -std=c++17 -O3 "$@"
}

gpp20() {
  g++ -std=c++20 "$@"
}

cpp20() {
  clang++ -std=c++20 "$@"
}

gpp201() {
  g++ -std=c++20 -O1 "$@"
}

cpp201() {
  clang++ -std=c++20 -O1 "$@"
}

gpp202() {
  g++ -std=c++20 -O2 "$@"
}

cpp202() {
  clang++ -std=c++20 -O2 "$@"
}

gpp203() {
  g++ -std=c++20 -O3 "$@"
}

cpp203() {
  clang++ -std=c++20 -O3 "$@"
}

gpp23() {
  g++ -std=c++23 "$@"
}

cpp23() {
  clang++ -std=c++23 "$@"
}

gpp231() {
  g++ -std=c++23 -O1 "$@"
}

cpp231() {
  clang++ -std=c++23 -O1 "$@"
}

gpp232() {
  g++ -std=c++23 -O2 "$@"
}

cpp232() {
  clang++ -std=c++23 -O2 "$@"
}

gpp233() {
  g++ -std=c++23 -O3 "$@"
}

cpp233() {
  clang++ -std=c++23 -O3 "$@"
}

gppg11() {
  g++ -std=gnu++11 "$@"
}

cppg11() {
  clang++ -std=gnu++11 "$@"
}

gppg111() {
  g++ -std=gnu++11 -O1 "$@"
}

cppg111() {
  clang++ -std=gnu++11 -O1 "$@"
}

gppg112() {
  g++ -std=gnu++11 -O2 "$@"
}

cppg112() {
  clang++ -std=gnu++11 -O2 "$@"
}

gppg113() {
  g++ -std=gnu++11 -O3 "$@"
}

cppg113() {
  clang++ -std=gnu++11 -O3 "$@"
}

gppg14() {
  g++ -std=gnu++14 "$@"
}

cppg14() {
  clang++ -std=gnu++14 "$@"
}

gppg141() {
  g++ -std=gnu++14 -O1 "$@"
}

cppg141() {
  clang++ -std=gnu++14 -O1 "$@"
}

gppg142() {
  g++ -std=gnu++14 -O2 "$@"
}

cppg142() {
  clang++ -std=gnu++14 -O2 "$@"
}

gppg143() {
  g++ -std=gnu++14 -O3 "$@"
}

cppg143() {
  clang++ -std=gnu++14 -O3 "$@"
}

gppg17() {
  g++ -std=gnu++17 "$@"
}

cppg17() {
  clang++ -std=gnu++17 "$@"
}

gppg171() {
  g++ -std=gnu++17 -O1 "$@"
}

cppg171() {
  clang++ -std=gnu++17 -O1 "$@"
}

gppg172() {
  g++ -std=gnu++17 -O2 "$@"
}

cppg172() {
  clang++ -std=gnu++17 -O2 "$@"
}

gppg173() {
  g++ -std=gnu++17 -O3 "$@"
}

cppg173() {
  clang++ -std=gnu++17 -O3 "$@"
}

gppg20() {
  g++ -std=gnu++20 "$@"
}

cppg20() {
  clang++ -std=gnu++20 "$@"
}

gppg201() {
  g++ -std=gnu++20 -O1 "$@"
}

cppg201() {
  clang++ -std=gnu++20 -O1 "$@"
}

gppg202() {
  g++ -std=gnu++20 -O2 "$@"
}

cppg202() {
  clang++ -std=gnu++20 -O2 "$@"
}

gppg203() {
  g++ -std=gnu++20 -O3 "$@"
}

cppg203() {
  clang++ -std=gnu++20 -O3 "$@"
}

gppg23() {
  g++ -std=gnu++23 "$@"
}

cppg23() {
  clang++ -std=gnu++23 "$@"
}

gppg231() {
  g++ -std=gnu++23 -O1 "$@"
}

cppg231() {
  clang++ -std=gnu++23 -O1 "$@"
}

gppg232() {
  g++ -std=gnu++23 -O2 "$@"
}

cppg232() {
  clang++ -std=gnu++23 -O2 "$@"
}

gppg233() {
  g++ -std=gnu++23 -O3 "$@"
}

cppg233() {
  clang++ -std=gnu++23 -O3 "$@"
}

gpus() {
  git push "$@"
}

gstt() {
  git status "$@"
}

gtag() {
  git tag "$@"
}

grbi() {
  git rebase -i "$@"
}

grbir() {
  git rebase -i --root "$@"
}

grbc() {
  (
    cgrr && git add . && git rebase --continue "$@"
  )
}

grbb() {
  git rebase --abort "$@"
}

gdif() {
  git diff "$@"
}

exbs() {
  exec bash "$@"
}

dtuis() {
  date -uIs "$@"
}

dtis() {
  date -Is "$@"
}

dtnix() {
  date +%s "$@"
}

dtYmd() {
  date +%Y/%m/%d "$@"
}

dtymd() {
  date +%y/%m/%d "$@"
}

xelt() {
  xelatex -interaction=nonstopmode -halt-on-error "$@"
}

lualt() {
  lualatex -interaction=nonstopmode -halt-on-error "$@"
}

ltmk() {
  latexmk -latexoption='-interaction=nonstopmode -halt-on-error' "$@"
}

getprop() {
  if [ -f '/system/bin/getprop' ]; then
    /system/bin/getprop "$@"
  else
    command getprop "$@"
  fi
}

binance() {
  /opt/Binance/binance --no-sandbox "$@"
}

onlyoffice() {
  desktopeditors "$@"
}

dph() {
  dolphin "$@"
}

vnc() {
  vncserver "$@"
}

vnck() {
  vncserver -kill "$@"
}

vncl() {
  vncserver -list "$@"
}

vncd() {
  local var
  var=$(vncserver 2>&1 | grep "desktop is" | sed -E 's/New.+desktop.+:/:/')
  [ -n "$var" ] && export DISPLAY="$var" && echo "DISPLAY: $var" || true
}

ubuntu_version_id() {
  if [ -f /etc/os-release ]; then
    if grep -q '^NAME="Linux Mint"' /etc/os-release; then
      inxi -Sx | awk -F': ' '/base/{print $2}' | awk '{print $2}'
    else
      . /etc/os-release
      echo "$VERSION_ID"
    fi
  fi
}

update_bashrc() {
  (
    cd ~/.bashrc.d || exit
    git reset --hard
    git pull --rebase
    git clean -fd
  )
}

aes_cbc_enc_pass() {
  openssl enc -aes-256-cbc -pbkdf2 -salt -in "$1" -out "$2" -pass pass:"$3" "${@:4}"
}

aes_cbc_enc_file() {
  openssl enc -aes-256-cbc -pbkdf2 -salt -in "$1" -out "$2" -pass file:"$3" "${@:4}"
}

aes_cbc_dec_pass() {
  openssl enc -d -aes-256-cbc -pbkdf2 -in "$1" -out "$2" -pass pass:"$3" "${@:4}"
}

aes_cbc_dec_file() {
  openssl enc -d -aes-256-cbc -pbkdf2 -in "$1" -out "$2" -pass file:"$3" "${@:4}"
}

mv_space_underscore() {
  while IFS= read -r -d '' f; do
    new="${f// /_}"
    [[ -e "$new" ]] && {
      echo "skipping '$f', '$new' exists"
      continue
    }
    mv -- "$f" "$new"
  done < <(find . -depth -name '* *' -print0)
}

mv_space_hyphen() {
  while IFS= read -r -d '' f; do
    new="${f// /-}"
    [[ -e "$new" ]] && {
      echo "skipping '$f', '$new' exists"
      continue
    }
    mv -- "$f" "$new"
  done < <(find . -depth -name '* *' -print0)
}

mkcd() {
  mkdir -p "$1"
  cd "$1" || return
}

cesh() {
  (
    shopt -s globstar nullglob
    for f in **/.sh; do
      test -f "$f" && chmod +x "$f"
    done
  )
}

fortune_cow() {
  fortune | fmt -40 -s | "$(shuf -n 1 -e cowsay cowthink)" -"$(shuf -n 1 -e b d g p s t w y)" -f "$(shuf -n 1 -e "$(cowsay -l | tail -n +2)")" -n
}

shch() {
  for f in "$@"; do
    test -f "$f" && shellcheck -e 1090,1091 "$f"
  done
}

shchc() {
  (
    shopt -s globstar nullglob
    for f in **/*.sh; do
      test -f "$f" && shellcheck -e 1090,1091 "$f"
    done
  )
}

cfm() {
  for f in "$@"; do
    test -f "$f" && clang-format -style=llvm -i "$f"
  done
}

cfmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.c **/*.h; do
      test -f "$f" && clang-format -style=llvm -i "$f"
    done
  )
}

cppfm() {
  for f in "$@"; do
    test -f "$f" && clang-format -style=llvm -i "$f"
  done
}

cppfmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.cpp **/*.hpp; do
      test -f "$f" && clang-format -style=llvm -i "$f"
    done
  )
}

javafm() {
  for f in "$@"; do
    test -f "$f" && clang-format -style=llvm -i "$f"
  done
}

javafmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.java; do
      test -f "$f" && clang-format -style=llvm -i "$f"
    done
  )
}

cssfm() {
  for f in "$@"; do
    test -f "$f" && prettier --write "$f"
  done
}

cssfmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.css; do
      test -f "$f" && prettier --write "$f"
    done
  )
}

jsfm() {
  for f in "$@"; do
    test -f "$f" && prettier --write "$f"
  done
}

jsfmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.js; do
      test -f "$f" && prettier --write "$f"
    done
  )
}

tsfm() {
  for f in "$@"; do
    test -f "$f" && prettier --write "$f"
  done
}

tsfmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.ts; do
      test -f "$f" && prettier --write "$f"
    done
  )
}

htmlfm() {
  for f in "$@"; do
    test -f "$f" && prettier --write "$f"
  done
}

htmlfmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.html; do
      test -f "$f" && prettier --write "$f"
    done
  )
}

mdfm() {
  for f in "$@"; do
    test -f "$f" && prettier --write "$f"
  done
}

mdfmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.md; do
      test -f "$f" && prettier --write "$f"
    done
  )
}

jsonfm() {
  for f in "$@"; do
    test -f "$f" && prettier --write "$f"
  done
}

jsonfmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.json; do
      test -f "$f" && prettier --write "$f"
    done
  )
}

ymlfm() {
  for f in "$@"; do
    test -f "$f" && prettier --write "$f"
  done
}

ymlfmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.yml; do
      test -f "$f" && prettier --write "$f"
    done
  )
}

shfm() {
  for f in "$@"; do
    test -f "$f" && shfmt -i 2 -ci -w "$f"
  done
}

shfmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.sh; do
      test -f "$f" && shfmt -i 2 -ci -w "$f"
    done
  )
}

rustfm() {
  for f in "$@"; do
    test -f "$f" && rustfmt "$f"
  done
}

rustfmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.rust; do
      test -f "$f" && rustfmt "$f"
    done
  )
}

luafm() {
  for f in "$@"; do
    test -f "$f" && stylua "$f"
  done
}

luafmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.lua; do
      test -f "$f" && stylua "$f"
    done
  )
}

pyfm() {
  for f in "$@"; do
    test -f "$f" && autopep8 --in-place --aggressive --aggressive "$f"
  done
}

pyfmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.py; do
      test -f "$f" && autopep8 --in-place --aggressive --aggressive "$f"
    done
  )
}

vfm() {
  for f in "$@"; do
    test -f "$f" && verible-verilog-format --inplace "$f"
  done
}

vfmc() {
  (
    shopt -s globstar nullglob
    for f in **/*.v **/*.sv **/*.verilog **/*.systemverilog; do
      verible-verilog-format --inplace "$f"
    done
  )
}

dfssh() {
  if (($# == 1)); then
    ssh "$1"
  elif (($# >= 2)); then
    local host="$1"
    local port="$2"
    shift 2
    ssh -p "$port" "$host" "$@"
  else
    echo "Usage:"
    echo "  dfssh host"
    echo "  dfssh host port [extra ssh args...]"
    return 1
  fi
}

dfsftp() {
  if (($# == 1)); then
    sftp "$1"
  elif (($# >= 2)); then
    local host="$1"
    local port="$2"
    shift 2
    sftp -P "$port" "$host" "$@"
  else
    echo "Usage:"
    echo "  dfsftp host"
    echo "  dfsftp host port [extra ssh args...]"
    return 1
  fi
}

csd() {
  cd ~/shared || return
  # shellcheck disable=2086,2164
  [ -n "$1" ] && cd $1
}

dicepass() {
  local n="$1"
  local sep="${2:--}"
  local url="https://www.eff.org/files/2016/07/18/eff_large_wordlist.txt"
  local file="$HOME/.eff_large_wordlist.txt"
  [[ ! -f "$file" ]] && curl -fsSL "$url" -o "$file"
  [[ ! -f "$file" ]] && printf 'ERROR: cannot download wordlist\n'
  local passphrase=''
  while true; do
    local word
    word="$(awk -v k="$(shuf -i 1-6 -n 5 | tr -d '\n')" '$1 == k { print $2; exit }' "$file")"
    ((${#passphrase} + ${#word} + ${#sep} > n)) && break
    [[ -n "$passphrase" ]] && passphrase+="$sep" || true
    passphrase+="$word"
  done
  ((${#passphrase} > 0)) && printf '%s\n' "$passphrase" || printf 'ERROR: length too short\n'
}

mkgwf() {
  mkdir -p .github/workflows
}

cgwf() {
  if [ -n "$GRR" ]; then
    cd "$GRR"/.github/workflows || return
  else
    cd .github/workflows || return
  fi
}

nvgwf() {
  # shellcheck disable=2086
  if [ -n "$GRR" ]; then
    nvim "$GRR"/.github/workflows/$1
  else
    nvim .github/workflows/$1
  fi
}

gwv() {
  gwenview "$@"
}

phice() {
  (
    local port="${1:-5001}"
    cd ~/phice && uv run gunicorn -b 127.0.0.1:"$port" -w 4 "app:app"
  )
}

update_combinedfox() {
  ./prefsCleaner.sh -s && ./overrides-updater.sh -su && ./updater.sh -su
}

rvs() {
  if (($# == 0)); then
    remote-viewer spice://127.0.0.1:5930
  else
    remote-viewer spice://127.0.0.1:"$1"
  fi
}

nhr() {
  HOME=/dev/null XDG_CONFIG_HOME=/dev/null "$@"
}
