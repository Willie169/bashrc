#!/data/data/com.termux/files/usr/bin/bash

if ! shopt -oq posix; then
  if [ -f $PREFIX/share/bash-completion/bash_completion ]; then
    . $PREFIX/share/bash-completion/bash_completion
  elif [ -f $PREFIX/etc/bash_completion ]; then
    . $PREFIX/etc/bash_completion
  fi
fi
