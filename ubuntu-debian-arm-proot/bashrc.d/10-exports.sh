#!/bin/bash

export TMPDIR="/tmp"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/usr/include"
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-arm64"
export JAVAROOT="/usr/local/java"
export CLASSPATH="$CLASSPATH:/usr/local/java/antlr-4.13.2-complete.jar:/usr/local/java/plantuml.jar"
export GOPROXY='direct'
export GOROOT="/usr/local/go"
export GOPATH="$HOME/go:$GOPATH"
export PATH="$GOPATH/bin:$HOME/.cargo/bin:/usr/local/texlive/2025/bin/aarch64-linux:$HOME/.local/bin:$HOME/.local/sbin:$GOROOT/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH"
export ANTLR_JAR="/usr/local/java/antlr-4.13.2-complete.jar"
export PLANTUML_JAR="/usr/local/java/plantuml.jar"
export KIT="/usr/share/LaTeX-ToolKit"
export PATCH="$HOME/texmf/tex/latex/physics-patch"
export PULSE_SERVER='127.0.0.1'
export DLFLAGS='-A -C'
