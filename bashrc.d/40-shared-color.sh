#!/usr/bin/env bash

case $- in
*i*) ;;
*) return ;;
esac

if command -v dircolors >/dev/null 2>&1; then
	# shellcheck disable=2015
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias ll='ls -alF --color=auto'
	alias la='ls -A --color=auto'
	alias l='ls -CF --color=auto'
	alias lsh='ls -sh --color=auto'
	alias lm='ls -m --color=auto'
	alias lam='ls -Am --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='grep -FI --color=auto'
	alias egrep='grep -EI --color=auto'
	alias gpr='grep -rI --color=auto'
	alias gpn='grep -nI --color=auto'
	alias gpi='grep -i --color=auto'
	alias gprn='grep -rnI --color=auto'
	alias gpri='grep -riI --color=auto'
	alias gpni='grep -niI --color=auto'
	alias gprni='grep -rniI --color=auto'
else
	alias ls='ls'
	alias ll='ls -alF'
	alias la='ls -A'
	alias l='ls -CF'
	alias lsh='ls -sh'
	alias lm='ls -m'
	alias lam='ls -Am'
	alias dir='dir'
	alias vdir='vdir'
	alias grep='grep'
	alias fgrep='grep -FI'
	alias egrep='grep -EI'
	alias gpr='grep -rI'
	alias gpn='grep -nI'
	alias gpi='grep -i'
	alias gprn='grep -rnI'
	alias gpri='grep -riI'
	alias gpni='grep -niI'
	alias gprni='grep -rniI'
fi
