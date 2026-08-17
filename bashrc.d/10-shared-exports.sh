#!/usr/bin/env bash

if [[ "$HOME" == '/data/data/com.termux/files/home' ]] || [[ "${PREFIX:-}" == '/data/data/com.termux/files/usr' ]]; then
  export IS_TERMUX=1
  export TMPDIR="$PREFIX/tmp"
  export USR_DIR="$PREFIX"
  export ETC_DIR="$PREFIX/etc"
  export PROOT_NO_SECCOMP=1
  export PROOT_DISTRO_CONTAINERS="$USR_DIR/var/lib/proot-distro/containers"
  export PDC="$PROOT_DISTRO_CONTAINERS"
  export EMU="/storage/emulated/0"
  export DOW="/storage/emulated/0/Download"
  export DOC="/storage/emulated/0/Documents"
  export SCR="/storage/emulated/0/Scripts"
  export JAVA_HOME="$USR_DIR/lib/jvm/java-21-openjdk"
  export ANDROID_HOME="$HOME/Android/Sdk"
  export ANDROID_NDK_HOME="$HOME/Android/Sdk/ndk/android-ndk-r29"
  export ANDROID_NDK_TOOLCHAINS="$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-aarch64"
else
  export IS_TERMUX=0
  export TMPDIR="/tmp"
  export USR_DIR="/usr"
  export ETC_DIR="/etc"
  export ANDROID_HOME="$HOME/Android/Sdk"
fi
if [ "$EUID" -eq 0 ]; then
  export IS_ROOT=1
else
  export IS_ROOT=0
fi
# shellcheck disable=2155
export ARCH=$(uname -m)
if [ "$IS_TERMUX" -eq 0 ]; then
  if [[ "$ARCH" == "x86_64" || "$ARCH" == "amd64" ]]; then
    export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-amd64"
    export LD_LIBRARY_PATH="/usr/local/cuda-13.9/lib64:/usr/local/cuda-13.8/lib64:/usr/local/cuda-13.7/lib64:/usr/local/cuda-13.6/lib64:/usr/local/cuda-13.5/lib64:/usr/local/cuda-13.4/lib64:/usr/local/cuda-13.3/lib64:/usr/local/cuda-13.2/lib64:/usr/local/cuda-13.1/lib64:/usr/local/cuda-13.0/lib64:${LD_LIBRARY_PATH:-}"
  else
    export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-arm64"
  fi
fi
if [[ "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/1/mountinfo)" != "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/$$/mountinfo)" ]]; then
  export IS_CONTAINER=1
  export GALLIUM_DRIVER=zink
  export MESA_GL_VERSION_OVERRIDE=4.3
else
  export IS_CONTAINER=0
fi
if [ "$IS_TERMUX" -eq 0 ] && [ "$IS_CONTAINER" -eq 1 ]; then
  export LANG=en_US.UTF-8
  export LC_CTYPE=en_US.UTF-8
  export LC_ALL=en_US.UTF-8
  export PULSE_SERVER=127.0.0.1
fi
export VISUAL=nvim
export EDITOR="$VISUAL"
export SHD="$HOME/shared"
export GTK_USE_PORTAL=1
export GOPROXY='direct'
export GOROOT="$USR_DIR/lib/go"
export GOPATH="$HOME/go"
export GOSUMDB="sum.golang.org"
export OLLAMA_API_BASE='http://127.0.0.1:11434'
export OLLAMA_API_HOST='http://127.0.0.1:11434'
export OLLAMA_BASE_URL='http://127.0.0.1:11434'
export OLLAMA_HOST='0.0.0.0'
export LITELLM_PROXY_URL='http://localhost:4000'
export HOMEBREW_UPDATE_TO_TAG=1
export HOMEBREW_AUTO_UPDATE_SECS=86400
export HOMEBREW_TAPS='/home/linuxbrew/.linuxbrew/Homebrew/Library/Taps'
export DLFLAGS='-A'
export KIT="$USR_DIR/share/LaTeX-ToolKit"
export PATCH="$HOME/texmf/tex/latex/physics-patch"
export WAYDROID_ROOT="$HOME/.local/share/waydroid"
export WAYDROID_HOME="$HOME/.local/share/waydroid/data/media/0"
export MINETEST="$HOME/.var/app/org.luanti.luanti/.minetest"
export BOTTLES="$HOME/.var/app/com.usebottles.bottles/data/bottles"
export MINETEST="$HOME/.var/app/org.luanti.luanti/.minetest"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export HF_HOME="$HOME/hf-models"
unset SSH_ASKPASS
unset SSH_ASKPASS_REQUIRE
unset GIT_ASKPASS
export PATH="$HOME/shizuku:$HOME/jadx/bin:$HOME/rar:$GOPATH/bin:$HOME/.cargo/bin:$JAVA_HOME/bin:$HOME/eclipse.jdt.ls/bin:$HOME/ktlsp/server/bin:$HOME/.opencode/bin:$HOME/llama.cpp/build/bin:$HOME/KataGo/cpp:$HOME/Sylvan/projects/gui:$HOME/Sylvan/projects/cli:/opt/TurboVNC/bin:$HOME/intelFPGA/20.1/modelsim_ase/bin:/opt/Binance:$USR_DIR/local/texlive/2026/bin/aarch64-linux:$USR_DIR/local/texlive/2025/bin/aarch64-linux:$USR_DIR/local/texlive/2026/bin/x86_64-linux:$USR_DIR/local/texlive/2025/bin/x86_64-linux:$USR_DIR/local/cuda/bin:$HOME/.local/share/flatpak/exports/bin:/var/lib/flatpak/exports/bin:$HOME/.local/bin:$HOME/.local/sbin:$GOROOT/bin:$USR_DIR/local/bin:$USR_DIR/local/sbin:$USR_DIR/bin:$USR_DIR/sbin:/bin:/sbin:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$HOME/Applications:$USR_DIR/games:/system/bin:${PATH:-}"
[ -n "${ANDROID_NDK_HOME:-}" ] && export PATH="$PATH:$ANDROID_NDK_HOME" || true
[ -n "${ANDROID_NDK_TOOLCHAINS:-}" ] && export PATH="$PATH:$ANDROID_NDK_TOOLCHAINS/bin" || true
[ -r "$HOME/.nvm" ] && export NVM_DIR="$HOME/.nvm"
[ -r "$HOME/conda" ] && export MAMBA_ROOT_PREFIX="$HOME/conda"
