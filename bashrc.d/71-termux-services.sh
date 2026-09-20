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

if [ ! -f ~/.bashrc.pid/virgl_test_server.pid ] || ! kill -0 "$(cat ~/.bashrc.pid/virgl_test_server_android.pid)" 2>/dev/null; then
  command -v virgl_test_server_android >/dev/null 2>&1 && (
    virgl_test_server_android >/dev/null 2>&1 &
    echo $! >~/.bashrc.pid/virgl_test_server_android.pid
  ) || true
fi
