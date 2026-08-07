#!/usr/bin/env bash

if [[ "$HOME" != '/data/data/com.termux/files/home' ]] && [[ "${PREFIX:-}" != '/data/data/com.termux/files/usr' ]]; then
	return
fi

mkdir -p ~/.bashrc.pid

if [ ! -f ~/.bashrc.pid/pulseaudio.pid ] || ! kill -0 "$(cat ~/.bashrc.pid/pulseaudio.pid)" 2>/dev/null; then
	command -v pulseaudio >/dev/null 2>&1 && (
		pulseaudio --start --exit-idle-time=-1 >/dev/null 2>&1
		pgrep -x pulseaudio | head -n1 >~/.bashrc.pid/pulseaudio.pid
		pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1
		pacmd load-module module-sles-sink
	) || true
fi

if [ ! -f ~/.bashrc.pid/virgl_test_server.pid ] || ! kill -0 "$(cat ~/.bashrc.pid/virgl_test_server.pid)" 2>/dev/null; then
	command -v virgl_test_server >/dev/null 2>&1 && (
		MESA_NO_ERROR=1 MESA_LOADER_DRIVER_OVERRIDE=zink MESA_GL_VERSION_OVERRIDE=4.3COMPAT MESA_GLES_VERSION_OVERRIDE=3.2 GALLIUM_DRIVER=zink ZINK_DESCRIPTORS=lazy virgl_test_server --use-egl-surfaceless --use-gles >/dev/null 2>&1 &
		echo $! >~/.bashrc.pid/virgl_test_server.pid
	) || true
fi
