#!/bin/bash

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export NVM_DIR="${HOME}/.nvm"
export MAMBA_ROOT_PREFIX="${HOME}/conda"
export TMPDIR="/tmp"
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-arm64"
export JAVAROOT="/usr/local/java"
export CLASSPATH="/usr/local/java/antlr-4.13.2-complete.jar:/usr/local/java/plantuml.jar"
export GOPROXY='direct'
export GOROOT="/usr/lib/go"
export GOPATH="${HOME}/go"
export GOSUMDB="sum.golang.org"
export BUN_INSTALL="${HOME}/.bun"
export PATH="${HOME}/jadx/bin:$GOPATH/bin:${HOME}/.cargo/bin:/usr/local/texlive/2026/bin/aarch64-linux:/usr/local/texlive/2025/bin/aarch64-linux:${HOME}/dev/llm/llama.cpp/build/bin:${HOME}/KataGo/cpp:${HOME}/Fairy-Stockfish/src:${HOME}/cutechess/build:${HOME}/Sylvan/projects/gui:${HOME}/Sylvan/projects/cli:${BUN_INSTALL}/bin:${JAVA_HOME}/bin:${HOME}/eclipse.jdt.ls/bin:${HOME}/.local/bin:${HOME}/.opencode/bin:${HOME}/.local/sbin:$GOROOT/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:${PATH}"
export ANTLR_JAR="/usr/local/java/antlr-4.13.2-complete.jar"
export PLANTUML_JAR="/usr/local/java/plantuml.jar"
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
export PULSE_SERVER=127.0.0.1
export GALLIUM_DRIVER=zink
export MESA_GL_VERSION_OVERRIDE=4.3
export DLFLAGS='-A -C'
export HOMEBREW_UPDATE_TO_TAG=1
export HOMEBREW_AUTO_UPDATE_SECS=86400
export HOMEBREW_TAPS='/home/linuxbrew/.linuxbrew/Homebrew/Library/Taps'
source /etc/os-release
