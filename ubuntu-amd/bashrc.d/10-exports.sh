#!/bin/bash

export NVM_DIR="$HOME/.nvm"
export MAMBA_ROOT_PREFIX="${HOME}/conda"
export TMPDIR="/tmp"
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-amd64"
export JAVAROOT="/usr/local/java"
export CLASSPATH="$CLASSPATH:/usr/local/java/antlr-4.13.2-complete.jar:/usr/local/java/plantuml.jar"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export ANDROID_HOME="$ANDROID_SDK_ROOT"
export ANDROID_NDK_HOME="$HOME/Android/Sdk/ndk/29.0.14206865"
export GOPROXY='direct'
export GOROOT="/usr/local/go"
export GOPATH="$HOME/go:$GOPATH"
export BUN_INSTALL="$HOME/.bun"
export PATH="$GOPATH/bin:$HOME/.cargo/bin:/opt/TurboVNC/bin:/usr/local/texlive/2025/bin/x86_64-linux:/usr/local/cuda-13.1/bin:$HOME/dev/llm/llama.cpp/build/bin:$HOME/KataGo/cpp:$HOME/Fairy-Stockfish/src:$HOME/cutechess/build:$HOME/Sylvan/projects/gui:$HOME/Sylvan/projects/cli:$BUN_INSTALL/bin:$HOME/.opencode/bin:$HOME/intelFPGA/20.1/modelsim_ase/bin:/opt/Binance:$HOME/.local/bin:$HOME/.local/sbin:$HOME/.local/share/flatpak/exports/bin:/var/lib/flatpak/exports/bin:$GOROOT/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/opt/android-studio/bin:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/emulator:$ANDROID_NDK_HOME:$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-13.1/lib64:$LD_LIBRARY_PATH"
export PIPEWIRE_RUNTIME_DIR="/run/user/1000"
export WAYDROID="$HOME/.local/share/waydroid/data/media/0"
export ANTLR_JAR="/usr/local/java/antlr-4.13.2-complete.jar"
export PLANTUML_JAR="/usr/local/java/plantuml.jar"
export BOTTLES="$HOME/.var/app/com.usebottles.bottles/data/bottles"
export KIT="/usr/share/LaTeX-ToolKit"
export PATCH="$HOME/texmf/tex/latex/physics-patch"
export VISUAL=vim
export EDITOR="$VISUAL"
export AIDER_EDITOR="$VISUAL"
export OLLAMA_API_BASE=http://127.0.0.1:11434
export OLLAMA_API_HOST=http://127.0.0.1:11434
export OLLAMA_BASE_URL=http://127.0.0.1:11434
export OLLAMA_HOST=0.0.0.0
export LITELLM_PROXY_URL=http://localhost:4000
export DOCKER_HOST=unix:///run/user/1000/docker.sock
export UBUNTU_VERSION_ID=$(
if grep -q '^NAME="Linux Mint"' /etc/os-release; then
  inxi -Sx | awk -F': ' '/base/{print $2}' | awk '{print $2}'
else
  . /etc/os-release
  echo "$VERSION_ID"
fi
)
source /etc/os-release
unset SSH_ASKPASS
unset SSH_ASKPASS_REQUIRE
