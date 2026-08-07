#!/usr/bin/env bash

case $- in
*i*) ;;
*) exit ;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s checkwinsize
shopt -s globstar

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

if [[ "$HOME" != '/data/data/com.termux/files/home' ]] && [[ "${PREFIX:-}" != '/data/data/com.termux/files/usr' ]]; then
	if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
		debian_chroot=$(cat /etc/debian_chroot)
	fi

	color_prompt=yes

	#force_color_prompt=yes

	if [ -n "${force_color_prompt:-}" ]; then
		if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
			color_prompt=yes
		else
			color_prompt=""
		fi
	fi

	if [ "${color_prompt:-}" = yes ]; then
		PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
		export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
	else
		PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
	fi
	unset color_prompt force_color_prompt

	case "${TERM:-}" in
	xterm* | rxvt*)
		PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
		;;
	*) ;;
	esac
fi
