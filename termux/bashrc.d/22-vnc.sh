#!/data/data/com.termux/files/usr/bin/bash

alias tx11='termux-x11'
alias xfce='dbus-launch --exit-with-session xfce4-session & 2>/dev/null'

xxfce() {
	if [ $# -ne 0 ]; then
		termux-x11 "$1" -xstartup "dbus-launch --exit-with-session xfce4-session"
	else
		termux-x11 :0 -xstartup "dbus-launch --exit-with-session xfce4-session"
	fi
}
