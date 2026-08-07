#!/usr/bin/env bash

case $- in
*i*) ;;
*) exit ;;
esac

shopt -s histappend
shopt -s checkwinsize
shopt -s globstar
HISTCONTROL=ignoreboth
HISTSIZE=5000
HISTFILESIZE=10000

if command -v dircolors >/dev/null 2>&1; then
	# shellcheck disable=2015
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	color='--color=auto'
else
	color=''
fi

ls() {
	command ls "$color" "$@"
}

ll() {
	command ls -alF "$color" "$@"
}

la() {
	command ls -A "$color" "$@"
}

l() {
	command ls -CF "$color" "$@"
}

lsh() {
	command ls -sh "$color" "$@"
}

lm() {
	command ls -m "$color" "$@"
}

lam() {
	command ls -Am "$color" "$@"
}

dir() {
	command dir "$color" "$@"
}

vdir() {
	command vdir "$color" "$@"
}

grep() {
	command grep "$color" "$@"
}

fgrep() {
	command grep -FI "$color" "$@"
}

egrep() {
	command grep -EI "$color" "$@"
}

gpr() {
	command grep -rI "$color" "$@"
}

gpn() {
	command grep -nI "$color" "$@"
}

gpi() {
	command grep -i "$color" "$@"
}

gprn() {
	command grep -rnI "$color" "$@"
}

gpri() {
	command grep -riI "$color" "$@"
}

gpni() {
	command grep -niI "$color" "$@"
}

gprni() {
	command grep -rniI "$color" "$@"
}
