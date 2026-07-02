#!/bin/bash

export NVM_DIR="${HOME}/.nvm"
export MAMBA_ROOT_PREFIX="${HOME}/conda"
export TMPDIR="/tmp"
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-amd64"
export JAVAROOT="/usr/local/java"
export CLASSPATH="/usr/local/java/antlr-4.13.2-complete.jar:/usr/local/java/plantuml.jar:${CLASSPATH:-}"
export ANDROID_HOME="${HOME}/Android/Sdk"
export ANDROID_SDK_ROOT="${ANDROID_HOME}"
export GOPROXY='direct'
export GOROOT="/usr/lib/go"
export GOPATH="${HOME}/go"
export GOSUMDB="sum.golang.org"
export PATH="${HOME}/jadx/bin:${HOME}/rar:${GOPATH}/bin:${HOME}/.cargo/bin:/opt/TurboVNC/bin:/usr/local/texlive/2026/bin/x86_64-linux:/usr/local/texlive/2025/bin/x86_64-linux:/usr/local/cuda/bin:${HOME}/dev/llm/llama.cpp/build/bin:${HOME}/KataGo/cpp:${HOME}/Fairy-Stockfish/src:${HOME}/cutechess/build:${HOME}/Sylvan/projects/gui:${HOME}/Sylvan/projects/cli:${JAVA_HOME}/bin:${HOME}/eclipse.jdt.ls/bin:${HOME}/RuView/v2/target/release/sensing-server:${HOME}/.opencode/bin:${HOME}/intelFPGA/20.1/modelsim_ase/bin:/opt/Binance:${HOME}/.local/share/flatpak/exports/bin:/var/lib/flatpak/exports/bin:${GOROOT}/bin:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/emulator:${HOME}/.local/bin:${HOME}/.local/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:${PATH:-}"
export LD_LIBRARY_PATH="/usr/local/cuda-13.0/lib64:/usr/local/cuda-13.1/lib64:/usr/local/cuda-13.2/lib64:/usr/local/cuda-13.3/lib64:${LD_LIBRARY_PATH:-}"
export WAYDROID="${HOME}/.local/share/waydroid/data/media/0"
export ANTLR_JAR="/usr/local/java/antlr-4.13.2-complete.jar"
export PLANTUML_JAR="/usr/local/java/plantuml.jar"
export BOTTLES="${HOME}/.var/app/com.usebottles.bottles/data/bottles"
export PRF="${HOME}/.local/share/proot-distro/containers"
export MINETEST="${HOME}/.var/app/org.luanti.luanti/.minetest"
export CC_PORT=8082
export KIT="/usr/share/LaTeX-ToolKit"
export PATCH="${HOME}/texmf/tex/latex/physics-patch"
export VISUAL=nvim
export EDITOR="${VISUAL}"
export AIDER_EDITOR="${VISUAL}"
export GTK_USE_PORTAL=1
export OLLAMA_API_BASE=http://127.0.0.1:11434
export OLLAMA_API_HOST=http://127.0.0.1:11434
export OLLAMA_BASE_URL=http://127.0.0.1:11434
export OLLAMA_HOST=0.0.0.0
export LITELLM_PROXY_URL=http://localhost:4000
export HOMEBREW_UPDATE_TO_TAG=1
export HOMEBREW_AUTO_UPDATE_SECS=86400
export HOMEBREW_TAPS='/home/linuxbrew/.linuxbrew/Homebrew/Library/Taps'
export DLFLAGS='-A -C'
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
unset GIT_ASKPASS
