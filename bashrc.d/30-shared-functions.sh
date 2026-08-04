#!/usr/bin/env bash

function y() {
	command -v yazi >/dev/null 2>&1 || return 0
	# shellcheck disable=2155
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd <"$tmp"
	# shellcheck disable=2164
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

__git_repo_reminder() {
	command -v git >/dev/null 2>&1 || return 0
	GRR=$(git rev-parse --show-toplevel 2>/dev/null)
	if [ -n "$GRR" ]; then
		if [ "$__LAST_GRR" != "$GRR" ]; then
			if [ -n "$__LAST_GRR" ]; then
				echo "Leaving Git repository: consider running 'git push'"
			fi
			echo "Entered Git repository: consider running 'git pull'"
			__LAST_GRR="$GRR"
		fi
	else
		if [ -n "$__LAST_GRR" ]; then
			echo "Leaving Git repository: consider running 'git push'"
			unset __LAST_GRR
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
		local opts=()
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
		local opts=()
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
		local opts=()
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

	if [ "$use_aria2" -eq 1 ]; then
		if try_aria2; then
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

	if [ "$use_wget" -eq 1 ]; then
		if try_wget; then
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

	return "$rc"
}

gh_release() {
	local dl_args=()
	local out_args=()
	local quiet=0
	local verbose=0
	local regex=0
	local github=1
	local codeberg=0
	local repo=""
	local file=""
	local name=""
	local tag=""
	local index=""
	local msg='Usage: gh_release [-h|--help] [-r|--regex] [-gh|--github] [-cb|--codeberg] [-n|--name release_name_pattern] [-t|--tag release_tag_name_pattern] [-i|--index asset_index] [-o|--output output file] [-O|--stdout] [-q|--quiet] [-v|--verbose] [-a|--aria2] [-A|--no-aria2] [-c|--curl] [-C|--no-curl] [-w|--wget] [-W|--no-wget] [-w2|--wget2] [-W2|--no-wget2] [--no-fallback] [--aria2_option <options to be passed to aria2c>] [--curl_option <options to be passed to curl>] [--wget_option <options to be passed to wget>] [--wget2_option <options to be passed to wget2>] <user/repo or repo URL> [asset pattern]
If -r|--regex is used, all patterns are intepreted as regex, otherwise all patterns are intepreted as glob pattern.
If repo is provided as URL, GitHub/Codeberg will be inferred from it.
If both -g|--github and -c|--codeberg are not supplied and repo is provided as user/repo, GitHub will be assumed.
Latest release is used if release is not specified.
Example 0:
gh_release cli/cli '"'"'gh_*_linux_amd64.deb'"'"'
gh_release https://github.com/cli/cli/ '"'"'gh_*_linux_amd64.deb'"'"'
gh_release -r cli/cli '"'"'^gh_.*_linux_amd64\.deb$'"'"'
gh_release -r https://github.com/cli/cli/ '"'"'^gh_.*_linux_amd64\.deb$'"'"'
gh_release cli/cli -i 4
Example 1:
gh_release github.com/cli/cli -n '"'"'*CLI 2.85.0*'"'"' '"'"'gh_*_linux_amd64.deb'"'"'
gh_release -r github.com/cli/cli -n '"'"'.*CLI 2\.85\.0.*'"'"' '"'"'^gh_.*_linux_amd64\.deb$'"'"'
Example 2:
gh_release --codeberg Codeberg/pages-server '"'"'codeberg-pages-server-*-debian-x86_64.tar.gz'"'"''

	while [ $# -gt 0 ]; do
		case "$1" in
		-h | --help)
			echo "$msg"
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
		if [ "$repo" != "${repo#github.com/}" ]; then
			github=1
			codeberg=0
			repo="${repo#github.com/}"
		fi
		if [ "$repo" != "${repo#codeberg.org/}" ]; then
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

	local file_regex=""
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
		# shellcheck disable=2155
		local release_name=$(echo "$release_json" | jq -r '.name // .tag_name')
		echo "Release: $release_name" >&2

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
	local dl_args=()
	local quiet=0
	local verbose=0
	local print_url=0
	local url=""

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

cgrr() {
	# shellcheck disable=2164
	[ -n "$GRR" ] && cd "$GRR"
}

ghcrpb() {
	gh repo create "$1" --public
	gh repo clone "$1"
}

ghcrpv() {
	gh repo create "$1" --private
	gh repo clone "$1"
}

gpul() {
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
	unset GITHUB_TOKEN
	gh auth login --scopes repo,read:org,admin:org,workflow,gist,notifications,delete_repo,write:packages,read:packages
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
	git rm -rf "${1:-*}"
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
	local notes=""
	local repo=""
	local files=()

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

	repo=$(git remote -v | grep origin | grep push | sed 's/^origin[ \t]*git@github\.com://' | sed -E 's/\.git[ \t]*\(push)//')

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

opv() {
	# shellcheck disable=2015
	command -v pv >/dev/null 2>&1 && pv || cat
}

bzip2_single() {
	while [ "$#" -gt 0 ]; do
		case "$1" in
		-h | --help)
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

	[ "$#" -eq 2 ] || {
		echo "Usage: bzip2_single [-h|--help] SOURCE TARGET" >&2
		return 2
	}

	set -o pipefail
	tar -cf - "$1" |
		opv |
		bzip2 -9 |
		opv \
			>"$2.tar.bz2"
}

gzip_single() {
	while [ "$#" -gt 0 ]; do
		case "$1" in
		-h | --help)
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

	[ "$#" -eq 2 ] || {
		echo "Usage: gzip_single [-h|--help] SOURCE TARGET" >&2
		return 2
	}

	set -o pipefail
	tar -cf - "$1" |
		opv |
		gzip -9 |
		opv \
			>"$2.tar.gz"
}

xz_single() {
	while [ "$#" -gt 0 ]; do
		case "$1" in
		-h | --help)
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

	[ "$#" -eq 2 ] || {
		echo "Usage: xz_single [-h|--help] SOURCE TARGET" >&2
		return 2
	}

	set -o pipefail
	tar -cf - "$1" |
		opv |
		xz -9 |
		opv \
			>"$2.tar.xz"
}

tar_single() {
	while [ "$#" -gt 0 ]; do
		case "$1" in
		-h | --help)
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

	[ "$#" -eq 2 ] || {
		echo "Usage: tar_single [-h|--help] SOURCE TARGET" >&2
		return 2
	}

	tar -cf "$2.tar" "$1"
}

zip_single() {
	while [ "$#" -gt 0 ]; do
		case "$1" in
		-h | --help)
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

	[ "$#" -eq 2 ] || {
		echo "Usage: zip_single [-h|--help] SOURCE TARGET" >&2
		return 2
	}

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
		-h | --help)
			echo "Usage: bzip2_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET"
			# shellcheck disable=2016
			echo 'Default size: $SPLIT_SIZE if set and 4000M if not'
			return 0
			;;
		-b)
			if [ -z "$2" ]; then
				echo "Option -b requires an argument" >&2
				echo "Usage: bzip2_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
				# shellcheck disable=2016
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
			# shellcheck disable=2016
			echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
			return 1
			;;
		*)
			break
			;;
		esac
	done

	[ "$#" -eq 2 ] || {
		echo "Usage: bzip2_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
		# shellcheck disable=2016
		echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
		return 2
	}

	set -o pipefail
	tar -cf - "$1" |
		opv |
		bzip2 -9 |
		opv |
		split -b "$bytes" -d -a 3 - "$2.tar.bz2.part."
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
		-h | --help)
			echo "Usage: gzip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET"
			# shellcheck disable=2016
			echo 'Default size: $SPLIT_SIZE if set and 4000M if not'
			return 0
			;;
		-b)
			if [ -z "$2" ]; then
				echo "Option -b requires an argument" >&2
				echo "Usage: gzip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
				# shellcheck disable=2016
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
			# shellcheck disable=2016
			echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
			return 1
			;;
		*)
			break
			;;
		esac
	done

	[ "$#" -eq 2 ] || {
		echo "Usage: gzip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
		# shellcheck disable=2016
		echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
		return 2
	}

	set -o pipefail
	tar -cf - "$1" |
		opv |
		gzip -9 |
		opv |
		split -b "$bytes" -d -a 3 - "$2.tar.gz.part."
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
		-h | --help)
			echo "Usage: xz_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET"
			# shellcheck disable=2016
			echo 'Default size: $SPLIT_SIZE if set and 4000M if not'
			return 0
			;;
		-b)
			if [ -z "$2" ]; then
				echo "Option -b requires an argument" >&2
				echo "Usage: xz_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
				# shellcheck disable=2016
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
			# shellcheck disable=2016
			echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
			return 1
			;;
		*)
			break
			;;
		esac
	done

	[ "$#" -eq 2 ] || {
		echo "Usage: xz_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
		# shellcheck disable=2016
		echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
		return 2
	}

	set -o pipefail
	tar -cf - "$1" |
		opv |
		xz -9 |
		opv |
		split -b "$bytes" -d -a 3 - "$2.tar.xz.part."
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
		-h | --help)
			echo "Usage: tar_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET"
			# shellcheck disable=2016
			echo 'Default size: $SPLIT_SIZE if set and 4000M if not'
			return 0
			;;
		-b)
			if [ -z "$2" ]; then
				echo "Option -b requires an argument" >&2
				echo "Usage: tar_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
				# shellcheck disable=2016
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
			# shellcheck disable=2016
			echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
			return 1
			;;
		*)
			break
			;;
		esac
	done

	[ "$#" -eq 2 ] || {
		echo "Usage: tar_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
		# shellcheck disable=2016
		echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
		return 2
	}

	set -o pipefail
	tar -cf - "$1" |
		opv |
		split -b "$bytes" -d -a 3 - "$2.tar.part."
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
		-h | --help)
			echo "Usage: zip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET"
			# shellcheck disable=2016
			echo 'Default size: $SPLIT_SIZE if set and 4000M if not'
			return 0
			;;
		-b)
			if [ -z "$2" ]; then
				echo "Option -b requires an argument" >&2
				echo "Usage: zip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
				# shellcheck disable=2016
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
			# shellcheck disable=2016
			echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
			return 1
			;;
		*)
			break
			;;
		esac
	done

	[ "$#" -eq 2 ] || {
		echo "Usage: zip_split [-h|--help] [-b SIZE | --bytes=SIZE] SOURCE TARGET" >&2
		# shellcheck disable=2016
		echo 'Default size: $SPLIT_SIZE if set and 4000M if not' >&2
		return 2
	}

	zip -r "$2.zip" "$1" || return
	split -b "$bytes" -d -a 3 "$2.zip" "$2.zip.part."
	rm -f "$2.zip"
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
	if (($# == 1)); then
		cd ~/shared || return
		# shellcheck disable=2086,2164
		cd $1
	else
		# shellcheck disable=2164
		cd ~/shared
	fi
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
		((${#passphrase} + ${#word} + ${#sep} > n)) && break
		[[ -n "$passphrase" ]] && passphrase+="$sep"
		passphrase+="$word"
	done
	((${#passphrase} > 0)) && printf '%s\n' "$passphrase" || printf 'ERROR: length too short\n'
}

ccf() {
	perl -i -pe 's/\x{FEFF}//g; s/\x{200B}//g; s/[\x00-\x08\x0B\x0C\x0E-\x1F\x7F]//g' -- "$1"
}

clt() {
	rm -- *.aux *.log *.nav *.out *.snm *.toc || true
}

xes() {
	set -- "${1:-"$(find -- *.tex 2>/dev/null | head -n 1)"}"
	ccf "$1"
	xelatex "$1" && xelatex "$1"
}

lus() {
	set -- "${1:-"$(find -- *.tex 2>/dev/null | head -n 1)"}"
	ccf "$1"
	lualatex "$1" && lualatex "$1"
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
