#!/data/data/com.termux/files/usr/bin/bash

__git_repo_reminder() {
  REPO_ROOT=$(git rev-parse --show-toplevel 2>/dev/null)
  if [ -n "$REPO_ROOT" ]; then
    if [ "$__LAST_REPO_ROOT" != "$REPO_ROOT" ]; then
      if [ -n "$__LAST_REPO_ROOT" ]; then
        echo "Leaving Git repository: consider running 'git push'"
      fi
      echo "Entered Git repository: consider running 'git pull'"
      __LAST_REPO_ROOT="$REPO_ROOT"
    fi
  else
    if [ -n "$__LAST_REPO_ROOT" ]; then
      echo "Leaving Git repository: consider running 'git push'"
      unset __LAST_REPO_ROOT
    fi
  fi
}
PROMPT_COMMAND="__git_repo_reminder${PROMPT_COMMAND:+;$PROMPT_COMMAND}"

dl() {
  local out=""
  local quiet=0
  local verbose=0
  local url=""
  local to_stdout=0
  local no_fallback=0
  local use_aria2=1
  local use_curl=1
  local use_wget=1
  local use_wget2=1
  local tmp_file
  local aria2_option=""
  local curl_option=""
  local wget_option=""
  local wget2_option=""

  set -- ${DLFLAGS:-} "$@"

  while [ $# -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: dl [-h|--help] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <URL>"
        echo 'Global flags: $DLFLAGS'
        return 0
        ;;
      -o|--output)
        out="$2"
        shift 2
        ;;
      -O|--stdout)
        to_stdout=1
        shift
        ;;
      -q|--quiet)
        quiet=1
        shift
        ;;
      -v|--verbose)
        verbose=1
        shift
        ;;
      -a|--aria2)
        use_aria2=1; use_curl=0; use_wget=0; use_wget2=0
        shift
        ;;
      -A|--no-aria2)
        use_aria2=0
        shift
        ;;
      -c|--curl)
        use_curl=1; use_aria2=0; use_wget=0; use_wget2=0
        shift
        ;;
      -C|--no-curl)
        use_curl=0
        shift
        ;;
      -w|--wget)
        use_wget=1; use_aria2=0; use_curl=0; use_wget2=0
        shift
        ;;
      -W|--no-wget)
        use_wget=0
        shift
        ;;
      -w2|--wget2)
        use_wget2=1; use_aria2=0; use_curl=0; use_wget=0
        shift
        ;;
      -W2|--no-wget2)
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
        echo "Usage: dl [-h|--help] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <URL>" >&2
        echo 'Global flags: $DLFLAGS' >&2
        return 2
        ;;
      *)
        url="$1"
        shift
        ;;
    esac
  done

  [ "$quiet" -eq 1 ] && verbose=0

  if [ -z "$url" ]; then
    echo "Error: no URL provided" >&2
    echo "Usage: dl [-h|--help] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <URL>" >&2
    echo 'Global flags: $DLFLAGS' >&2
    return 2
  fi

  if [ -n "$out" ] && [ "$to_stdout" -eq 0 ]; then
    mkdir -p "$(dirname "$out")" || return 1
  fi

  try_aria2() {
    command -v aria2c >/dev/null 2>&1 || return 127
    local opts=()
    [ "$quiet" -eq 1 ] && opts+=(-q)
    [ "$verbose" -eq 1 ] && opts+=(-v)

    if [ "$to_stdout" -eq 1 ]; then
      tmp_file=$(mktemp "${TMPDIR:-/tmp}/dl.XXXXXXXXXX") || return 1
      rm -f "$tmp_file"
      aria2c "${opts[@]}" "$aria2_option" -o "$(basename "$tmp_file")" -d "$(dirname "$tmp_file")" "$url"
      cat "$tmp_file"
      rm -f "$tmp_file"
    elif [ -n "$out" ]; then
      aria2c "${opts[@]}" "$aria2_option" -o "$out" "$url"
    else
      aria2c "${opts[@]}" "$aria2_option" "$url"
    fi
  }

  try_curl() {
    command -v curl >/dev/null 2>&1 || return 127
    local opts=(-fL)
    [ "$quiet" -eq 1 ] && opts+=(-sS)
    [ "$verbose" -eq 1 ] && opts+=(-v)

    if [ "$to_stdout" -eq 1 ]; then
      curl "${opts[@]}" "$curl_option" "$url"
    elif [ -n "$out" ]; then
      curl "${opts[@]}" "$curl_option" -o "$out" "$url"
    else
      curl "${opts[@]}" "$curl_option" -O "$url"
    fi
  }

  try_wget() {
    command -v wget >/dev/null 2>&1 || return 127
    local opts=()
    [ "$quiet" -eq 1 ] && opts+=(-q)
    [ "$verbose" -eq 1 ] && opts+=(-v)

    if [ "$to_stdout" -eq 1 ]; then
      wget "${opts[@]}" "$wget_option" -O - "$url"
    elif [ -n "$out" ]; then
      wget "${opts[@]}" "$wget_option" -O "$out" "$url"
    else
      wget "${opts[@]}" "$wget_option" "$url"
    fi
  }

  try_wget2() {
    command -v wget2 >/dev/null 2>&1 || return 127
    local opts=()
    [ "$quiet" -eq 1 ] && opts+=(-q)
    [ "$verbose" -eq 1 ] && opts+=(-v)

    if [ "$to_stdout" -eq 1 ]; then
      wget2 "${opts[@]}" "$wget2_option" -O - "$url"
    elif [ -n "$out" ]; then
      wget2 "${opts[@]}" "$wget2_option" -O "$out" "$url"
    else
      wget2 "${opts[@]}" "$wget2_option" "$url"
    fi
  }

  local rc=1

  if [ "$use_aria2" -eq 1 ]; then
    if try_aria2; then
      [ "$to_stdout" -eq 1 ] || [ "$verbose" -eq 1 ] && echo "aria2 used"
      return 0
    fi
    rc=$?
    [ "$no_fallback" -eq 1 ] && return "$rc"
  fi

  if [ "$use_curl" -eq 1 ]; then
    if try_curl; then
      [ "$to_stdout" -eq 1 ] || [ "$verbose" -eq 1 ] && echo "curl used"
      return 0
    fi
    rc=$?
    [ "$no_fallback" -eq 1 ] && return "$rc"
  fi

  if [ "$use_wget" -eq 1 ]; then
    if try_wget; then
      [ "$to_stdout" -eq 1 ] || [ "$verbose" -eq 1 ] && echo "wget used"
      return 0
    fi
    rc=$?
    [ "$no_fallback" -eq 1 ] && return "$rc"
  fi

  if [ "$use_wget2" -eq 1 ]; then
    if try_wget2; then
      [ "$to_stdout" -eq 1 ] || [ "$verbose" -eq 1 ] && echo "wget2 used"
      return 0
    fi
    rc=$?
    [ "$no_fallback" -eq 1 ] && return "$rc"
  fi

  return "$rc"
}

gh_latest() {
  local dl_args=()
  local quiet=0
  local verbose=0
  local repo=""
  local file=""
  local name=""
  local tag=""
  local index=""

  while [ $# -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: gh_latest [-h|--help] [-n|--name release_name_pattern] [-t|--tag release_tag_name_pattern] [-i|--index asset_index] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <user/repo or URL> [asset pattern]"
        echo "Example: gh_latest cli/cli gh_*_linux_amd64.deb"
        echo "Example: gh_latest https://github.com/cli/cli/ gh_*_linux_amd64.deb"
        echo "Example: gh_latest github.com/cli/cli -n '*CLI 2.85.0*' gh_*_linux_amd64.deb"
        echo "Example: gh_latest cli/cli -i 0"
        shift
        ;;
      -q|--quiet)
        quiet=1
        dl_args+=("$1")
        shift
        ;;
      -v|--verbose)
        verbose=1
        dl_args+=("$1")
        shift
        ;;
      -n|--name)
        name="$2"
        shift 2
        ;;
      -t|--tag)
        tag="$2"
        shift 2
        ;;
      -i|--index)
        index="$2"
        shift 2
        ;;
      -O|--stdout|-a|--aria2|-A|--no-aria2|-c|--curl|-C|--no-curl|-w|--wget|-W|--no-wget|-w2|--wget2|-W2|--no-wget2|--no-fallback)
        dl_args+=("$1")
        shift
        ;;
      -o|--output|--aria2_option|--curl_option|--wget_option|--wget2_option)
        dl_args+=("$1")
        dl_args+=("$2")
        shift 2
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "Usage: gh_latest [-h|--help] [-n|--name release_name_pattern] [-t|--tag release_tag_name_pattern] [-i|--index asset_index] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <user/repo or URL> [asset pattern]" >&2
        echo "Example: gh_latest cli/cli gh_*_linux_amd64.deb" >&2
        echo "Example: gh_latest https://github.com/cli/cli/ gh_*_linux_amd64.deb" >&2
        echo "Example: gh_latest github.com/cli/cli -n '*CLI 2.85.0*' gh_*_linux_amd64.deb" >&2
        echo "Example: gh_latest cli/cli -i 0" >&2
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

  [ "$quiet" -eq 1 ] && verbose=0

  repo="${repo#https://}"
  repo="${repo#http://}"
  repo="${repo#github.com/}"
  repo="${repo%.git}"
  repo="${repo%/}"

  if [ -z "$repo" ]; then
    echo "Error: no repo provided. Expected user/repo or URL" >&2
    echo "Usage: gh_latest [-h|--help] [-n|--name release_name_pattern] [-t|--tag release_tag_name_pattern] [-i|--index asset_index] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <user/repo or URL> [asset pattern]" >&2
    echo "Example: gh_latest cli/cli gh_*_linux_amd64.deb" >&2
    echo "Example: gh_latest https://github.com/cli/cli/ gh_*_linux_amd64.deb" >&2
    echo "Example: gh_latest github.com/cli/cli -n '*CLI 2.85.0*' gh_*_linux_amd64.deb" >&2
    echo "Example: gh_latest cli/cli -i 0" >&2
    return 1
  fi

  if ! echo "$repo" | grep -Eq '^[a-zA-Z0-9_.-]+/[a-zA-Z0-9_.-]+$'; then
    echo "Error: invalid repo format. Expected user/repo or URL" >&2
    echo "Usage: gh_latest [-h|--help] [-n|--name release_name_pattern] [-t|--tag release_tag_name_pattern] [-i|--index asset_index] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <user/repo or URL> [asset pattern]" >&2
    echo "Example: gh_latest cli/cli gh_*_linux_amd64.deb" >&2
    echo "Example: gh_latest https://github.com/cli/cli/ gh_*_linux_amd64.deb" >&2
    echo "Example: gh_latest github.com/cli/cli -n '*CLI 2.85.0*' gh_*_linux_amd64.deb" >&2
    echo "Example: gh_latest cli/cli -i 0" >&2
    return 1
  fi

  [ "$quiet" -eq 0 ] && echo "Fetching latest release for $repo..." >&2

  local file_regex=""
  if [ -n "$file" ]; then
    file_regex=$(printf '%s' "$file" | sed '
      s/\\/\\\\\\\\/g
      s/\[/\\\\[/g
      s/\]/\\\\]/g
      s/\./[.]/g
      s/\*/.*/g
      s/\?/./g
      s/(/\\\\(/g
      s/)/\\\\)/g
      s/|/\\\\|/g
      s/+/\\\\+/g
      s/\$/\\\\$/g
      s/\^/\\\\^/g
    ')
    file_regex="^${file_regex}\$"
  fi

  local release_json
  if [ -n "$name" ] || [ -n "$tag" ]; then
    release_json=$(curl -fsSL "https://api.github.com/repos/$repo/releases" 2>/dev/null)
    if [ -z "$release_json" ]; then
      echo "Error: failed to fetch releases or repo not found" >&2
      return 1
    fi
  else
    release_json=$(curl -fsSL "https://api.github.com/repos/$repo/releases/latest" 2>/dev/null)
    if [ -z "$release_json" ] || [ "$release_json" = "null" ]; then
      echo "Error: no releases found or repo not found" >&2
      return 1
    fi
  fi

  if [ -n "$name" ]; then
    local name_regex
    name_regex=$(printf '%s' "$name" | sed '
      s/\\/\\\\\\\\/g
      s/\[/\\\\[/g
      s/\]/\\\\]/g
      s/\./[.]/g
      s/\*/.*/g
      s/\?/./g
      s/(/\\\\(/g
      s/)/\\\\)/g
      s/|/\\\\|/g
      s/+/\\\\+/g
      s/\$/\\\\$/g
      s/\^/\\\\^/g
    ')
    name_regex="^${name_regex}\$"

    release_json=$(echo "$release_json" | jq -r --arg NAME "$name_regex" '
      map(select(
        .name != null and
        (.name | test($NAME))
      ))
      | max_by(.published_at)
    ')

    if [ "$release_json" = "null" ] || [ -z "$release_json" ]; then
      echo "Error: no release found with name matching: $name" >&2
      return 1
    fi
  fi

  if [ -n "$tag" ]; then
    local tag_regex
    tag_regex=$(printf '%s' "$tag" | sed '
      s/\\/\\\\\\\\/g
      s/\[/\\\\[/g
      s/\]/\\\\]/g
      s/\./[.]/g
      s/\*/.*/g
      s/\?/./g
      s/(/\\\\(/g
      s/)/\\\\)/g
      s/|/\\\\|/g
      s/+/\\\\+/g
      s/\$/\\\\$/g
      s/\^/\\\\^/g
    ')
    tag_regex="^${tag_regex}\$"

    release_json=$(echo "$release_json" | jq -r --arg TAG "$tag_regex" '
      map(select(
        .tag_name != null and
        (.tag_name | test($TAG))
      ))
      | max_by(.published_at)
    ')

    if [ "$release_json" = "null" ] || [ -z "$release_json" ]; then
      echo "Error: no release found with tag name matching: $tag" >&2
      return 1
    fi
  fi

  local urls
  urls=$(echo "$release_json" | jq -r --arg FILE "$file_regex" --arg INDEX "$index" '
    if .assets then
      .assets
      | map(select(
          .name != null and
          ($FILE == "" or (.name | test($FILE)))
        ))
      | if $INDEX != "" then
          [.[($INDEX|tonumber)]?]
        else
          .
        end
      | .[]
      | .browser_download_url
    else
      empty
    end
  ')

  if [ -z "$urls" ]; then
    echo "Error: no matching assets found" >&2
    return 1
  fi

  local count
  count=$(echo "$urls" | grep -cve '^\s*$')

  if [ "$quiet" -eq 0 ]; then
    local release_name=$(echo "$release_json" | jq -r '.name // .tag_name')
    echo "Release: $release_name" >&2

    if [ "$count" -gt 1 ]; then
      echo "Found $count matching assets. Downloading all" >&2
      if [ "$verbose" -eq 1 ]; then
        echo "$urls" | nl -w2 -s': ' | sed 's/^/  /' >&2
      fi
    elif [ "$verbose" -eq 1 ]; then
      echo "Found 1 matching asset:" >&2
      echo "$urls" | sed 's/^/  /' >&2
    fi
  fi

  local success=true
  local downloaded=0
  while IFS= read -r url; do
    [ -z "$url" ] && continue

    downloaded=$((downloaded + 1))
    [ "$quiet" -eq 0 ] && echo "[$downloaded/$count] Downloading: $(basename "$url")" >&2

    if ! dl "${dl_args[@]}" "$url"; then
      echo "Error: failed to download $url" >&2
      success=false
    fi
  done <<< "$urls"

  if [ "$success" = false ]; then
    return 1
  elif [ "$quiet" -eq 0 ]; then
    echo "Download completed successfully" >&2
  fi
}

gh_latest_r() {
  local dl_args=()
  local quiet=0
  local verbose=0
  local repo=""
  local file=""
  local name=""
  local tag=""
  local index=""

  while [ $# -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: gh_latest_r [-h|--help] [-n|--name release_name_regex] [-t|--tag release_tag_name_regex] [-i|--index asset_index] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <user/repo or URL> [asset pattern]"
        echo "Example: gh_latest_r cli/cli '^gh_.*_linux_amd64\.deb$'"
        echo "Example: gh_latest_r https://github.com/cli/cli/ '^gh_.*_linux_amd64\.deb$'"
        echo "Example: gh_latest_r github.com/cli/cli -n '.*CLI 2\.85\.0.*' '^gh_.*_linux_amd64\.deb$'"
        echo "Example: gh_latest_r cli/cli -i 0"
        shift
        ;;
      -q|--quiet)
        quiet=1
        dl_args+=("$1")
        shift
        ;;
      -v|--verbose)
        verbose=1
        dl_args+=("$1")
        shift
        ;;
      -n|--name)
        name="$2"
        shift 2
        ;;
      -t|--tag)
        tag="$2"
        shift 2
        ;;
      -i|--index)
        index="$2"
        shift 2
        ;;
      -O|--stdout|-a|--aria2|-A|--no-aria2|-c|--curl|-C|--no-curl|-w|--wget|-W|--no-wget|-w2|--wget2|-W2|--no-wget2|--no-fallback)
        dl_args+=("$1")
        shift
        ;;
      -o|--output|--aria2_option|--curl_option|--wget_option|--wget2_option)
        dl_args+=("$1")
        dl_args+=("$2")
        shift 2
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "Usage: gh_latest_r [-h|--help] [-n|--name release_name_regex] [-t|--tag release_tag_name_regex] [-i|--index asset_index] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <user/repo or URL> [asset pattern]" >&2
        echo "Example: gh_latest_r cli/cli '^gh_.*_linux_amd64\.deb$'" >&2
        echo "Example: gh_latest_r https://github.com/cli/cli/ '^gh_.*_linux_amd64\.deb$'" >&2
        echo "Example: gh_latest_r github.com/cli/cli -n '.*CLI 2\.85\.0.*' '^gh_.*_linux_amd64\.deb$'" >&2
        echo "Example: gh_latest_r cli/cli -i 0" >&2
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

  [ "$quiet" -eq 1 ] && verbose=0

  repo="${repo#https://}"
  repo="${repo#http://}"
  repo="${repo#github.com/}"
  repo="${repo%.git}"
  repo="${repo%/}"

  if [ -z "$repo" ]; then
    echo "Error: no repo provided. Expected user/repo or URL" >&2
    echo "Usage: gh_latest_r [-h|--help] [-n|--name release_name_regex] [-t|--tag release_tag_name_regex] [-i|--index asset_index] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <user/repo or URL> [asset pattern]" >&2
    echo "Example: gh_latest_r cli/cli '^gh_.*_linux_amd64\.deb$'" >&2
    echo "Example: gh_latest_r https://github.com/cli/cli/ '^gh_.*_linux_amd64\.deb$'" >&2
    echo "Example: gh_latest_r github.com/cli/cli -n '.*CLI 2\.85\.0.*' '^gh_.*_linux_amd64\.deb$'" >&2
    echo "Example: gh_latest_r cli/cli -i 0" >&2
    return 1
  fi

  if ! echo "$repo" | grep -Eq '^[a-zA-Z0-9_.-]+/[a-zA-Z0-9_.-]+$'; then
    echo "Error: invalid repo format. Expected user/repo or URL" >&2
    echo "Usage: gh_latest_r [-h|--help] [-n|--name release_name_regex] [-t|--tag release_tag_name_regex] [-i|--index asset_index] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <user/repo or URL> [asset pattern]" >&2
    echo "Example: gh_latest_r cli/cli '^gh_.*_linux_amd64\.deb$'" >&2
    echo "Example: gh_latest_r https://github.com/cli/cli/ '^gh_.*_linux_amd64\.deb$'" >&2
    echo "Example: gh_latest_r github.com/cli/cli -n '.*CLI 2\.85\.0.*' '^gh_.*_linux_amd64\.deb$'" >&2
    echo "Example: gh_latest_r cli/cli -i 0" >&2
    return 1
  fi

  [ "$quiet" -eq 0 ] && echo "Fetching latest release for $repo..." >&2

  local release_json
  if [ -n "$name" ] || [ -n "$tag" ]; then
    release_json=$(curl -fsSL "https://api.github.com/repos/$repo/releases" 2>/dev/null)
    if [ -z "$release_json" ]; then
      echo "Error: failed to fetch releases or repo not found" >&2
      return 1
    fi
  else
    release_json=$(curl -fsSL "https://api.github.com/repos/$repo/releases/latest" 2>/dev/null)
    if [ -z "$release_json" ] || [ "$release_json" = "null" ]; then
      echo "Error: no releases found or repo not found" >&2
      return 1
    fi
  fi

  if [ -n "$name" ]; then
    release_json=$(echo "$release_json" | jq -r --arg NAME "$name" '
      map(select(
        .name != null and
        (.name | test($NAME))
      ))
      | max_by(.published_at)
    ')

    if [ "$release_json" = "null" ] || [ -z "$release_json" ]; then
      echo "Error: no release found with name matching: $name" >&2
      return 1
    fi
  fi

  if [ -n "$tag" ]; then
    release_json=$(echo "$release_json" | jq -r --arg TAG "$tag" '
      map(select(
        .tag_name != null and
        (.tag_name | test($TAG))
      ))
      | max_by(.published_at)
    ')

    if [ "$release_json" = "null" ] || [ -z "$release_json" ]; then
      echo "Error: no release found with tag name matching: $tag" >&2
      return 1
    fi
  fi

  local urls
  urls=$(echo "$release_json" | jq -r --arg FILE "$file" --arg INDEX "$index" '
    if .assets then
      .assets
      | map(select(
          .name != null and
          ($FILE == "" or (.name | test($FILE)))
        ))
      | if $INDEX != "" then
          [.[($INDEX|tonumber)]?]
        else
          .
        end
      | .[]
      | .browser_download_url
    else
      empty
    end
  ')

  if [ -z "$urls" ]; then
    echo "Error: no matching assets found" >&2
    return 1
  fi

  local count
  count=$(echo "$urls" | grep -cve '^\s*$')

  if [ "$quiet" -eq 0 ]; then
    local release_name=$(echo "$release_json" | jq -r '.name // .tag_name')
    echo "Release: $release_name" >&2

    if [ "$count" -gt 1 ]; then
      echo "Found $count matching assets. Downloading all" >&2
      if [ "$verbose" -eq 1 ]; then
        echo "$urls" | nl -w2 -s': ' | sed 's/^/  /' >&2
      fi
    elif [ "$verbose" -eq 1 ]; then
      echo "Found 1 matching asset:" >&2
      echo "$urls" | sed 's/^/  /' >&2
    fi
  fi

  local success=true
  local downloaded=0
  while IFS= read -r url; do
    [ -z "$url" ] && continue

    downloaded=$((downloaded + 1))
    [ "$quiet" -eq 0 ] && echo "[$downloaded/$count] Downloading: $(basename "$url")" >&2

    if ! dl "${dl_args[@]}" "$url"; then
      echo "Error: failed to download $url" >&2
      success=false
    fi
  done <<< "$urls"

  if [ "$success" = false ]; then
    return 1
  elif [ "$quiet" -eq 0 ]; then
    echo "Download completed successfully" >&2
  fi
}

gh_file() {
  local dl_args=()
  local quiet=0
  local verbose=0
  local print_url=0
  local url=""

  while [ $# -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: gh_file [-h|--help] [-p|--print-url] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <GitHub file blob URL>"
        echo "Example: gh_file https://github.com/cli/cli/blob/trunk/README.md"
        return 0
        ;;
      -p|--print-url)
        print_url=1
        shift
        ;;
      -q|--quiet)
        quiet=1
        dl_args+=("$1")
        shift
        ;;
      -v|--verbose)
        verbose=1
        dl_args+=("$1")
        shift
        ;;
     -O|--stdout|-a|--aria2|-A|--no-aria2|-c|--curl|-C|--no-curl|-w|--wget|-W|--no-wget|-w2|--wget2|-W2|--no-wget2|--no-fallback)
        dl_args+=("$1")
        ;;
      -o|--output|--aria2_option|--curl_option|--wget_option|--wget2_option)
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
    dl "${dl_args[@]}" "$url"
  fi
}

gpull() {
  level="${1:-0}"
  if [ "$level" -eq 0 ]; then
    repo_dir=$(git rev-parse --show-toplevel 2>/dev/null)
    if [ -n "$repo_dir" ]; then
      echo "$repo_dir"
      (cd "$repo_dir" && git pull origin)
    else
      echo "Not in a Git repo."
    fi
  else
    depth=$((level + 1))
    find . -mindepth "$depth" -maxdepth "$depth" -type d -name .git | while read -r gitdir; do
      repo_dir=$(dirname "$gitdir")
      echo "$repo_dir"
      (cd "$repo_dir" && git pull origin)
    done
  fi
}

gauth() {
  gh auth login --scopes repo,read:org,admin:org,workflow,gist,notifications,delete_repo,write:packages,read:packages
}

gac() {
  git add .
  git commit -m "$1"
}

gacp() {
  git add .
  git commit -m "$1"
  git push
}

grm() {
    git rm -rf "${1:-*}"
}

gtr() {
  if [ $# -lt 1 ]; then
    echo "Usage: gtr <version> [-n|--notes 'notes'] [files...]"
    return 1
  fi
  local version="$1"
  shift
  local notes=""
  local files=()

  while [ $# -gt 0 ]; do
    case "$1" in
      -n|--notes)
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

  if [ -n "$notes" ]; then
    gh release create "v$version" --title "Version $version release" --notes "$notes" "${files[@]}"
  else
    gh release create "v$version" --title "Version $version release" --notes "" "${files[@]}"
  fi
}

git_upstream_pr() {
  if [ -z "$1" ]; then
  echo "Usage: git_upstream_pr <PR_NUMBER>"
  return 1
  fi
  git fetch upstream pull/$1/head:pr-$1 || { echo "Fetch failed"; return 1; }
  git merge pr-$1 || { echo "Merge conflict! Resolve manually."; return 1; }
  git push || { echo "Push failed"; return 1; }
  git branch -D pr-$1
}

__pv() {
  command -v pv >/dev/null 2>&1 && pv || cat
}

bzip2_single() {
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: bzip2_single [-h|--help] SOURCE TARGET"
        return 0
        ;;
      --)
        shift
        break
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "Usage: bzip2_single [-h|--help] SOURCE TARGET" >&2
        return 1
        ;;
      *)
        break
        ;;
    esac
  done

  [ "$#" -eq 2 ] || { echo "Usage: bzip2_single [-h|--help] SOURCE TARGET" >&2; return 2; }

  set -o pipefail
  tar -cf - "$1" \
  | __pv \
  | bzip2 -9 \
  | __pv \
  > "$2.tar.bz2"
}

gzip_single() {
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: gzip_single [-h|--help] SOURCE TARGET"
        return 0
        ;;
      --)
        shift
        break
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "Usage: gzip_single [-h|--help] SOURCE TARGET" >&2
        return 1
        ;;
      *)
        break
        ;;
    esac
  done

  [ "$#" -eq 2 ] || { echo "Usage: gzip_single [-h|--help] SOURCE TARGET" >&2; return 2; }

  set -o pipefail
  tar -cf - "$1" \
  | __pv \
  | gzip -9 \
  | __pv \
  > "$2.tar.gz"
}

xz_single() {
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: xz_single [-h|--help] SOURCE TARGET"
        return 0
        ;;
      --)
        shift
        break
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "Usage: xz_single [-h|--help] SOURCE TARGET" >&2
        return 1
        ;;
      *)
        break
        ;;
    esac
  done

  [ "$#" -eq 2 ] || { echo "Usage: xz_single [-h|--help] SOURCE TARGET" >&2; return 2; }

  set -o pipefail
  tar -cf - "$1" \
  | __pv \
  | xz -9 \
  | __pv \
  > "$2.tar.xz"
}

tar_single() {
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: tar_single [-h|--help] SOURCE TARGET"
        return 0
        ;;
      --)
        shift
        break
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "Usage: tar_single [-h|--help] SOURCE TARGET" >&2
        return 1
        ;;
      *)
        break
        ;;
    esac
  done

  [ "$#" -eq 2 ] || { echo "Usage: tar_single [-h|--help] SOURCE TARGET" >&2; return 2; }

  tar -cf "$2.tar" "$1"
}

zip_single() {
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: zip_single [-h|--help] SOURCE TARGET"
        return 0
        ;;
      --)
        shift
        break
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "Usage: zip_single [-h|--help] SOURCE TARGET" >&2
        return 1
        ;;
      *)
        break
        ;;
    esac
  done

  [ "$#" -eq 2 ] || { echo "Usage: zip_single [-h|--help] SOURCE TARGET" >&2; return 2; }

  zip -r "$2.zip" "$1"
}

bzip2_split() {
  local bytes
  if [ -n "$SPLIT_SIZE" ]; then
    bytes="$SPLIT_SIZE"
  else
    bytes="4000M"
  fi

  while [ "$#" -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: bzip2_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET"
        echo 'Default size: $SPLIT_SIZE if set and 4000M if not'
        return 0
        ;;
      -b)
        if [ -z "$2" ]; then
          echo "Option -b requires an argument" >&2
          echo "Usage: bzip2_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
          echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
          return 1
        fi
        bytes="$2"
        shift 2
        ;;
      --bytes=*)
        bytes="${1#*=}"
        shift
        ;;
      --)
        shift
        break
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "Usage: bzip2_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
        echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
        return 1
        ;;
      *)
        break
        ;;
    esac
  done

  [ "$#" -eq 2 ] || { echo "Usage: bzip2_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2; echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2; return 2; }

  set -o pipefail
  tar -cf - "$1" \
  | __pv \
  | bzip2 -9 \
  | __pv \
  | split -b "$bytes" -d -a 3 - "$2.tar.bz2.part."
}

gzip_split() {
  local bytes
  if [ -n "$SPLIT_SIZE" ]; then
    bytes="$SPLIT_SIZE"
  else
    bytes="4000M"
  fi

  while [ "$#" -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: gzip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET"
        echo 'Default size: $SPLIT_SIZE if set and 4000M if not'
        return 0
        ;;
-b)
        if [ -z "$2" ]; then
          echo "Option -b requires an argument" >&2
          echo "Usage: gzip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
          echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
          return 1
        fi
        bytes="$2"
        shift 2
        ;;
      --bytes=*)
        bytes="${1#*=}"
        shift
        ;;
      --)
        shift
        break
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "Usage: gzip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
        echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
        return 1
        ;;
      *)
        break
        ;;
    esac
  done

  [ "$#" -eq 2 ] || { echo "Usage: gzip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2; echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2; return 2; }

  set -o pipefail
  tar -cf - "$1" \
  | __pv \
  | gzip -9 \
  | __pv \
  | split -b "$bytes" -d -a 3 - "$2.tar.gz.part."
}

xz_split() {
  local bytes
  if [ -n "$SPLIT_SIZE" ]; then
    bytes="$SPLIT_SIZE"
  else
    bytes="4000M"
  fi

  while [ "$#" -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: xz_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET"
        echo 'Default size: $SPLIT_SIZE if set and 4000M if not'
        return 0
        ;;
      -b)
        if [ -z "$2" ]; then
          echo "Option -b requires an argument" >&2
          echo "Usage: xz_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
          echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
          return 1
        fi
        bytes="$2"
        shift 2
        ;;
      --bytes=*)
        bytes="${1#*=}"
        shift
        ;;
      --)
        shift
        break
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "Usage: xz_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
        echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
        return 1
        ;;
      *)
        break
        ;;
    esac
  done

  [ "$#" -eq 2 ] || { echo "Usage: xz_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2; echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2; return 2; }

  set -o pipefail
  tar -cf - "$1" \
  | __pv \
  | xz -9 \
  | __pv \
  | split -b "$bytes" -d -a 3 - "$2.tar.xz.part."
}

tar_split() {
  local bytes
  if [ -n "$SPLIT_SIZE" ]; then
    bytes="$SPLIT_SIZE"
  else
    bytes="4000M"
  fi

  while [ "$#" -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: tar_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET"
        echo 'Default size: $SPLIT_SIZE if set and 4000M if not'
        return 0
        ;;
      -b)
        if [ -z "$2" ]; then
          echo "Option -b requires an argument" >&2
          echo "Usage: tar_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
          echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
          return 1
        fi
        bytes="$2"
        shift 2
        ;;
      --bytes=*)
        bytes="${1#*=}"
        shift
        ;;
      --)
        shift
        break
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "Usage: tar_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
        echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
        return 1
        ;;
      *)
        break
        ;;
    esac
  done

  [ "$#" -eq 2 ] || { echo "Usage: tar_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2; echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2; return 2; }

  set -o pipefail
  tar -cf - "$1" \
  | __pv \
  | split -b "$bytes" -d -a 3 - "$2.tar.part."
}

zip_split() {
  local bytes
  if [ -n "$SPLIT_SIZE" ]; then
    bytes="$SPLIT_SIZE"
  else
    bytes="4000M"
  fi

  while [ "$#" -gt 0 ]; do
    case "$1" in
      -h|--help)
        echo "Usage: zip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET"
        echo 'Default size: $SPLIT_SIZE if set and 4000M if not'
        return 0
        ;;
      -b)
        if [ -z "$2" ]; then
          echo "Option -b requires an argument" >&2
          echo "Usage: zip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
          echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
          return 1
        fi
        bytes="$2"
        shift 2
        ;;
      --bytes=*)
        bytes="${1#*=}"
        shift
        ;;
      --)
        shift
        break
        ;;
      -*)
        echo "Unknown option: $1" >&2
        echo "Usage: zip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
        echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
        return 1
        ;;
      *)
        break
        ;;
    esac
  done

  [ "$#" -eq 2 ] || { echo "Usage: zip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2; echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2; return 2; }

  zip -r "$2.zip" "$1" || return
  split -b "$bytes" -d -a 3 "$2.zip" "$2.zip.part."
  rm -f "$2.zip"
}

dfssh() {
  local forwards=(
    -L 3000:localhost:3000
    -L 3001:localhost:3001
    -L 3300:localhost:3300
    -L 4000:localhost:4000
    -L 5000:localhost:5000
    -L 5500:localhost:5500
    -L 5900:localhost:5900
    -L 5901:localhost:5901
    -L 5902:localhost:5902
    -L 5903:localhost:5903
    -L 7891:localhost:7891
    -L 8008:localhost:8008
    -L 8502:localhost:8502
    -L 8080:localhost:8080
    -L 8081:localhost:8081
    -L 8082:localhost:8082
    -L 8765:localhost:8765
    -L 11434:localhost:11434
    -L 18789:localhost:18789
  )
  if (( $# == 1 )); then
    ssh root@"$1" "${forwards[@]}"
  elif (( $# == 2 )); then
    ssh "$1"@"$2" "${forwards[@]}"
  elif (( $# >= 3 )); then
    local user="$1"
    local host="$2"
    local port="$3"
    shift 3
    ssh "$user"@"$host" -p "$port" "${forwards[@]}" "$@"
  else
    echo "Usage:"
    echo "  dfssh host"
    echo "  dfssh user host"
    echo "  dfssh user host port [extra ssh args...]"
    return 1
  fi
}

cfssh() {
  local forwards=(
    -L 18789:localhost:18789
  )
  if (( $# == 1 )); then
    ssh "$1"@localhost "${forwards[@]}"
  elif (( $# == 2 )); then
    ssh "$1"@"$2" "${forwards[@]}"
  elif (( $# >= 3 )); then
    local user="$1"
    local host="$2"
    local port="$3"
    shift 3
    ssh "$user"@"$host" -p "$port" "${forwards[@]}" "$@"
  else
    echo "Usage:"
    echo "  cfssh user"
    echo "  cfssh user host"
    echo "  cfssh user host port [extra ssh args...]"
    return 1
  fi
}

pdssh() {
  local forwards=(
    -L 3000:localhost:3000
    -L 3001:localhost:3001
    -L 3300:localhost:3300
    -L 4000:localhost:4000
    -L 5000:localhost:5000
    -L 5500:localhost:5500
    -L 5900:localhost:5900
    -L 5901:localhost:5901
    -L 5902:localhost:5902
    -L 5903:localhost:5903
    -L 7891:localhost:7891
    -L 8008:localhost:8008
    -L 8502:localhost:8502
    -L 8080:localhost:8080
    -L 8081:localhost:8081
    -L 8082:localhost:8082
    -L 8765:localhost:8765
    -L 11434:localhost:11434
    -L 18789:localhost:18789
  )
  if (( $# == 1 )); then
    ssh root@"$1" -p 2022 "${forwards[@]}"
  elif (( $# >= 2 )); then
    local user="$1"
    local host="$2"
    shift 2
    ssh "$user"@"$host" -p 2022 "${forwards[@]}" "$@"
  else
    echo "Usage:"
    echo "  pdssh host"
    echo "  pdssh user host [extra ssh args...]"
    return 1
  fi
}

pcssh() {
  if (( $# == 1 )); then
    ssh "$1"@localhost -p 2222
  elif (( $# >= 2 )); then
    local user="$1"
    local host="$2"
    shift 2
    ssh "$user"@"$host" -p 2222 "$@"
  else
    echo "Usage:"
    echo "  pcssh user"
    echo "  pcssh user host"
    echo "  pcssh user host [extra ssh args...]"
    return 1
  fi
}

dfsftp() {
  if (( $# == 1 )); then
    sftp root@"$1"
  elif (( $# == 2 )); then
    sftp "$1"@"$2"
  elif (( $# >= 3 )); then
    local user="$1"
    local host="$2"
    local port="$3"
    shift 3
    sftp -P "$port" "$user"@"$host" "$@"
  else
    echo "Usage:"
    echo "  dfsftp host"
    echo "  dfsftp user host"
    echo "  dfsftp user host port [extra ssh args...]"
    return 1
  fi
}

cfsftp() {
  if (( $# == 1 )); then
    sftp "$1"@localhost
  elif (( $# == 2 )); then
    sftp "$1"@"$2"
  elif (( $# >= 3 )); then
    local user="$1"
    local host="$2"
    local port="$3"
    shift 3
    sftp -P "$port" "$user"@"$host" "$@"
  else
    echo "Usage:"
    echo "  cfsftp user"
    echo "  cfsftp user host"
    echo "  cfsftp user host port [extra ssh args...]"
    return 1
  fi
}

pdsftp() {
  if (( $# == 1 )); then
    sftp -P 2022 root@"$1"
  elif (( $# >= 2 )); then
    local user="$1"
    local host="$2"
    shift 2
    sftp -P 2022 "$user"@"$host" "$@"
  else
    echo "Usage:"
    echo "  pdsftp host"
    echo "  pdsftp user host [extra ssh args...]"
    return 1
  fi
}

pcsftp() {
  if (( $# == 1 )); then
    sftp -P 2222 "$1"@localhost
  elif (( $# >= 2 )); then
    local user="$1"
    local host="$2"
    shift 2
    sftp -P 2222 "$user"@"$host" "$@"
  else
    echo "Usage:"
    echo "  pcsftp user"
    echo "  pcsftp user host"
    echo "  pcsftp user host [extra ssh args...]"
    return 1
  fi
}

csd(){
  if (( $# == 1 )); then
    cd ~/shared
    cd $1
  else
    cd ~/shared
  fi
}

phice() {
  (
  local port="${1:-5000}"
  cd ~/phice && uv run gunicorn -b 127.0.0.1:"$port" -w 4 "app:app"
  )
}

dicepass() {
  local n="$1"
  local sep="${2:--}"
  local url="https://www.eff.org/files/2016/07/18/eff_large_wordlist.txt"
  local file="${HOME}/.eff_large_wordlist.txt"
  [[ ! -f "$file" ]] && curl -fsSL "$url" -o "$file"
  [[ ! -f "$file" ]] && printf 'ERROR: cannot download wordlist\n'
  local passphrase=''
  while true; do
    local word
    word="$(awk -v k="$(shuf -i 1-6 -n 5 | tr -d '\n')" '$1 == k { print $2; exit }' "$file")"
    (( ${#passphrase} + ${#word} + ${#sep} > n )) && break
    [[ -n "$passphrase" ]] && passphrase+="$sep"
    passphrase+="$word"
  done
  (( ${#passphrase} > 0 )) && printf '%s\n' "$passphrase" || printf 'ERROR: length too short\n'
}

ccf() {
  perl -i -pe 's/\x{FEFF}//g; s/\x{200B}//g; s/[\x00-\x08\x0B\x0C\x0E-\x1F\x7F]//g' -- "$1"
}

clt() {
  rm *.aux *.log *.nav *.out *.snm *.toc || true
}

clean_disk() {
  rm -rf ~/.cache/*
  find $PREFIX/tmp ! -path '*/proot*' -prune -o \( -type d -o -type f \) -exec rm -rf {} +
  apt clean
  apt autoclean
}

update_vimrc() {
  (
  cd ~/.vim_runtime
  git reset --hard
  git clean -d --force
  git pull --rebase
  python3 update_plugins.py
  rm -rf sources_non_forked/vim-ollama
  )
}

update_bashrc() {
  (
  cd ~
  [ -r ".bashrc.d/11-proot.sh" ] && mkdir .bashrc.d.tmp && cp .bashrc.d/11-proot.sh .bashrc.d.tmp/11-proot.sh
  rm -f .bashrc 2>/dev/null || true
  rm -rf .bashrc.d 2>/dev/null || true
  mkdir .bashrc.d
  wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/00-env.sh -O ~/.bashrc.d/00-env.sh
  wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/10-exports.sh -O ~/.bashrc.d/10-exports.sh
  if [ -r ".bashrc.d.tmp/11-proot.sh" ]; then
    cp .bashrc.d.tmp/11-proot.sh .bashrc.d/
    rm -r .bashrc.d.tmp 2>/dev/null || true
  else
    wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/10-exports.sh -O ~/.bashrc.d/11-proot.sh
  fi
  wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/15-color.sh -O ~/.bashrc.d/15-color.sh
  wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/20-aliases.sh -O ~/.bashrc.d/20-aliases.sh
  wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/21-cxx.sh -O ~/.bashrc.d/21-cxx.sh
  wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/22-java.sh -O ~/.bashrc.d/22-java.sh
  wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/23-vnc.sh -O ~/.bashrc.d/23-vnc.sh
  wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/50-functions.sh -O ~/.bashrc.d/50-functions.sh
  wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/51-extra-functions.sh -O ~/.bashrc.d/51-extra-functions.sh
  wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/60-completion.sh -O ~/.bashrc.d/60-completion.sh
  wget https://raw.githubusercontent.com/Willie169/bashrc/main/termux/bashrc.d/bashrc.sh -O ~/.bashrc
  )
}

update_nvim() {
  curl -fsSL https://raw.githubusercontent.com/Willie169/bashrc/main/nvim.sh | bash
}
