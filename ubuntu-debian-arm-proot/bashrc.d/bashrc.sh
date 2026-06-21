#!/bin/bash

case $- in
  *i*) ;;
  *) return;;
esac

if [ -d "$HOME/.bashrc.d"  ];  then
  for f in "$HOME/.bashrc.d/"*; do
    [ -r "$f"  ] && source "$f"
  done
fi

[ -f ${HOME}/.config/broot/launcher/bash/br ] && source ${HOME}/.config/broot/launcher/bash/br

[ -f /home/linuxbrew/.linuxbrew/bin/brew ] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"

command -v fzf >/dev/null && eval "$(fzf --bash)"

command -v register-python-argcomplete >/dev/null && command -v pipx >/dev/null && eval $(register-python-argcomplete pipx)

export MAMBA_ROOT_PREFIX="${HOME}/conda"
source "${HOME}/conda/etc/profile.d/conda.sh" 2>/dev/null || true
source "${HOME}/conda/etc/profile.d/mamba.sh" 2>/dev/null || true
