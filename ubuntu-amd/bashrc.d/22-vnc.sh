#!/usr/bin/env bash

alias vnc='vncserver'
alias vncn='vncserver -noxstartup'
alias vnck='vncserver -kill'
alias vncl='vncserver -list'

vncd() {
	# shellcheck disable=2155
	local var=$(vncserver 2>&1 | grep "desktop is" | sed -E 's/New.+desktop.+:/:/')
	[ -n "$var" ] && export DISPLAY="$var"
}
