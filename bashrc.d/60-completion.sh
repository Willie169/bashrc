#!/usr/bin/env bash

if ! shopt -oq posix; then
	[ -f "$USR_DIR"/share/bash-completion/bash_completion ] && . "$USR_DIR"/share/bash-completion/bash_completion
	[ -f "$ETC_DIR"/bash_completion ] && . "$ETC_DIR"/bash_completion
fi

[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

if [ -r "${HOME}/.nvm" ]; then
	export NVM_DIR="${HOME}/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
fi

[ -f "${HOME}"/.config/broot/launcher/bash/br ] && source "${HOME}"/.config/broot/launcher/bash/br

command -v luarocks >/dev/null 2>&1 && . <(luarocks completion bash)

[ -f /home/linuxbrew/.linuxbrew/bin/brew ] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"

command -v fzf >/dev/null 2>&1 && eval "$(fzf --bash)"

if [ -r "${HOME}/conda" ]; then
	export MAMBA_ROOT_PREFIX="${HOME}/conda"
	source "${HOME}/conda/etc/profile.d/conda.sh" 2>/dev/null || true
	source "${HOME}/conda/etc/profile.d/mamba.sh" 2>/dev/null || true
fi

# shellcheck disable=2155,2164
if command yazi >/dev/null 2>&1; then
	function y() {
		local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
		command yazi "$@" --cwd-file="$tmp"
		IFS= read -r -d '' cwd <"$tmp"
		[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
		command rm -f -- "$tmp"
	}
fi
