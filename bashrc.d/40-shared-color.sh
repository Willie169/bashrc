#!/usr/bin/env bash

case $- in
*i*) ;;
*) return ;;
esac

if command -v dircolors >/dev/null 2>&1; then
	# shellcheck disable=2015
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='grep -F --color=auto'
	alias egrep='grep -E --color=auto'
	alias ll='ls -alF'
	alias la='ls -A --color=auto'
	alias l='ls -CF --color=auto'
	alias lsh='ls -sh --color=auto'
	alias lm='ls -m --color=auto'
	alias lam='ls -Am --color=auto'
else
	alias fgrep='grep -F'
	alias egrep='grep -E'
	alias ll='ls -alF'
	alias la='ls -A'
	alias l='ls -CF'
	alias lsh='ls -sh'
	alias lm='ls -m'
	alias lam='ls -Am'
fi
