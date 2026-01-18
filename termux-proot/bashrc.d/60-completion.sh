#!/data/data/com.termux/files/usr/bin/bash

if ! shopt -oq posix; then
  if [ -f $PREFIX/share/bash-completion/bash_completion ]; then
    . $PREFIX/share/bash-completion/bash_completion
  elif [ -f $PREFIX/etc/bash_completion ]; then
    . $PREFIX/etc/bash_completion
  fi
fi
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
