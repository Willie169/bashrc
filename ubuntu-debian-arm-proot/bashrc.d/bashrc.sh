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

[ -r ~/API_KEY.sh ] && source ~/API_KEY.sh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"

eval "$(fzf --bash)"

export MAMBA_ROOT_PREFIX="${HOME}/conda"
source "${HOME}/conda/etc/profile.d/conda.sh" 2>/dev/null || true
source "${HOME}/conda/etc/profile.d/mamba.sh" 2>/dev/null || true
