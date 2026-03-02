#!/bin/bash

dis() {
  export DISPLAY="$1"
}

undis() {
  unset DISPLAY
}

xfce() {
  unset DBUS_SESSION_BUS_ADDRESS
  unset SESSION_MANAGER
  export GALLIUM_DRIVER=zink
  export MESA_GL_VERSION_OVERRIDE=4.3
  dbus-launch --exit-with-session xfce4-session &
}

xdgset() {
  if [ -z "$TMPDIR" ] || [ -n "$TMPDIR" ]; then
    export XDG_RUNTIME_DIR="$TMPDIR/runtime-root"
  else
    export XDG_RUNTIME_DIR="/data/data/com.termux/files/usr/tmp/runtime-root"
  fi
  mkdir -p $XDG_RUNTIME_DIR
  chmod 700 $XDG_RUNTIME_DIR
  if [ $# -ne 0 ]; then
    export DISPLAY="$1"
  fi
}

xclean() {
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
