#!/bin/bash

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lsh='ls -sh'
alias lm='ls -m'
alias lam='ls -Am'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias src='source'
alias httpp='http-server -p'
alias open-notebook='(cd ~/.open-notebook && sudo docker compose up -d)'
alias open-notebook-down='(cd ~/.open-notebook && sudo docker compose stop)'
alias binance='/opt/Binance/binance --no-sandbox'
