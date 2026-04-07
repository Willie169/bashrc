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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export MAMBA_ROOT_PREFIX="${HOME}/conda"
source "${HOME}/conda/etc/profile.d/conda.sh" 2>/dev/null || true
source "${HOME}/conda/etc/profile.d/mamba.sh" 2>/dev/null || true

