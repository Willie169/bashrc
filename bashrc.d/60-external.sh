#!/usr/bin/env bash

[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

[ -n "${NVM_DIR:-}" ] && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

[ -n "${MAMBA_ROOT_PREFIX:-}" ] && source "$MAMBA_ROOT_PREFIX/etc/profile.d/conda.sh"
[ -n "${MAMBA_ROOT_PREFIX:-}" ] && source "$MAMBA_ROOT_PREFIX/etc/profile.d/mamba.sh"

[ -f "$HOME/.config/broot/launcher/bash/br" ] && source "$HOME/.config/broot/launcher/bash/br"

# shellcheck disable=2155,2164
if command -v yazi >/dev/null 2>&1; then
  function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    command yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd <"$tmp"
    [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
    command rm -f -- "$tmp"
  }
fi

case $- in
  *i*) ;;
  *) return ;;
esac

if ! shopt -oq posix; then
  [ -f "$USR_DIR"/share/bash-completion/bash_completion ] && . "$USR_DIR"/share/bash-completion/bash_completion
  [ -f "$ETC_DIR"/bash_completion ] && . "$ETC_DIR"/bash_completion
fi

[ -n "${NVM_DIR:-}" ] && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

command -v luarocks >/dev/null 2>&1 && source <(luarocks completion bash)

[ -f /home/linuxbrew/.linuxbrew/bin/brew ] && source <(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)

command -v fzf >/dev/null 2>&1 && source <(fzf --bash)

command -v llama-cli >/dev/null 2>&1 && source <(llama-cli --completion-bash >/dev/null 2>&1)
