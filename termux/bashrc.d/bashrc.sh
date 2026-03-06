#!/data/data/com.termux/files/usr/bin/bash

case $- in
  *i*) ;;
  *) return;;
esac

if [ -d "$HOME/.bashrc.d"  ];  then
  for f in "$HOME/.bashrc.d/"*; do
    [ -r "$f"  ] && source "$f"
  done
fi

[ -r ~/API_KEY.sh ] && source ~/API_KEY.sh

pulseaudio --start --exit-idle-time=-1
pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1
pacmd load-module module-sles-sink

MESA_NO_ERROR=1 MESA_LOADER_DRIVER_OVERRIDE=zink MESA_GL_VERSION_OVERRIDE=4.3COMPAT MESA_GLES_VERSION_OVERRIDE=3.2 GALLIUM_DRIVER=zink ZINK_DESCRIPTORS=lazy virgl_test_server --use-egl-surfaceless --use-gles &

export SOCKET=/data/data/com.termux/files/usr/tmp/termux-shell.sock
if command -v socat >/dev/null 2>&1; then
if [ ! -S "$SOCKET" ] || ! echo "echo hello" | socat - UNIX-CONNECT:"$SOCKET" 2>/dev/null | grep -q "^hello$"; then
mkdir -p "$(dirname "$SOCKET")"
[ -e "$SOCKET" ] && rm "$SOCKET"
socat UNIX-LISTEN:"$SOCKET",fork,reuseaddr SYSTEM:'
source "$HOME/.bashrc"
while IFS= read -r -d "" cmd; do
if [ -n "$cmd" ]; then
"$cmd"
fi
done
' >/dev/null 2>&1 &
fi
fi
alias termux="socat - UNIX-CONNECT:$SOCKET"
