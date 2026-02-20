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
alias sshd='/usr/sbin/sshd'
alias open-notebook='(cd ~/.open-notebook && udocker run surrealdb start --log info --user root --pass root rocksdb:~/.open-notebook/surreal_data/mydatabase.db 2>/dev/null & && SURREAL_PID=$! && echo $SURREAL_PID > surrealdb.pid && sleep 5 && OPEN_NOTEBOOK_ENCRYPTION_KEY=change-me-to-a-secret-string SURREAL_URL=ws://localhost:8000/rpc SURREAL_USER=root SURREAL_PASSWORD=root SURREAL_NAMESPACE=open_notebook SURREAL_DATABASE=open_notebook OLLAMA_API_BASE=http://localhost:11434 udocker run open-notebook 2>/dev/null & && NOTEBOOK_PID=$! && echo $NOTEBOOK_PID > open-notebook.pid)'
alias open-notebook-stop='(cd ~/.open-notebook && [ -f surrealdb.pid ] && kill $(cat surrealdb.pid) 2>/dev/null && [ -f open-notebook.pid ] && kill $(cat open-notebook.pid) 2>/dev/null && rm -f surrealdb.pid open-notebook.pid)'
