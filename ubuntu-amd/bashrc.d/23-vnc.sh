#!/bin/bash

alias vnck='vncserver -kill'
alias vncl='vncserver -list'

vnc() {
    export DISPLAY=$(vncserver 2>&1 | grep "desktop is" | sed -E 's/New.+desktop.+:/:/')
}

xdgset() {
  if [ -z "$TMPDIR" ] || [ -n "$TMPDIR" ]; then
    export XDG_RUNTIME_DIR="$TMPDIR/runtime-root"
  else
    export XDG_RUNTIME_DIR="/data/data/com.termux/files/usr/tmp/runtime-root"
  fi
  mkdir -p $XDG_RUNTIME_DIR
  chmod 700 $XDG_RUNTIME_DIR
  export DISPLAY="$1"
}

vncclean() {
  if [ $# -ne 1 ] || ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Usage: vncclean <display_number>" >&2
    return 1
  fi

  if [ -z "$TMPDIR" ] || [ -n "$TMPDIR" ]; then
    rm -f "$TMPDIR/.X${1}-lock" 2>/dev/null || true
    rm -f "$TMPDIR/.X11-unix/.X${1}" 2>/dev/null || true
    rm -f "$TMPDIR/.X11-unix/X${1}" 2>/dev/null || true
  else
    rm -f "/tmp/.X${1}-lock" 2>/dev/null || true
    rm -f "/tmp/.X11-unix/.X${1}" 2>/dev/null || true
    rm -f "/tmp/.X11-unix/X${1}" 2>/dev/null || true
  fi
}
