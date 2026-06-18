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

[ -f ${HOME}/.config/broot/launcher/bash/br ] && source ${HOME}/.config/broot/launcher/bash/br

command -v register-python-argcomplete >/dev/null && command -v pipx >/dev/null && eval $(register-python-argcomplete pipx)

mkdir -p ~/.bashrc.pid

if [ ! -f ~/.bashrc.pid/pulseaudio.pid ] || ! kill -0 $(cat ~/.bashrc.pid/pulseaudio.pid) 2>/dev/null; then
    command -v pulseaudio >/dev/null 2>&1 && (pulseaudio --start --exit-idle-time=-1 >/dev/null 2>&1; echo $(pgrep -x pulseaudio | head -n1) > ~/.bashrc.pid/pulseaudio.pid; pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1; pacmd load-module module-sles-sink)
fi

if [ ! -f ~/.bashrc.pid/virgl_test_server.pid ] || ! kill -0 $(cat ~/.bashrc.pid/virgl_test_server.pid) 2>/dev/null; then
    command -v virgl_test_server >/dev/null 2>&1 && (MESA_NO_ERROR=1 MESA_LOADER_DRIVER_OVERRIDE=zink MESA_GL_VERSION_OVERRIDE=4.3COMPAT MESA_GLES_VERSION_OVERRIDE=3.2 GALLIUM_DRIVER=zink ZINK_DESCRIPTORS=lazy virgl_test_server --use-egl-surfaceless --use-gles >/dev/null 2>&1 & echo $! > ~/.bashrc.pid/virgl_test_server.pid)
fi
