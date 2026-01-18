#!/data/data/com.termux/files/usr/bin/bash

export TMPDIR="/data/data/com.termux/files/usr/tmp"
export PREFIX="/data/data/com.termux/files/usr"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:$PREFIX/include"
export NVM_DIR="$HOME/.nvm"
export JAVA_HOME="$PREFIX/lib/jvm/java-21-openjdk"
export CLASSPATH="$CLASSPATH:$PREFIX/local/java/antlr-4.13.2-complete.jar:$PREFIX/local/java/plantuml.jar"
export GOPROXY='direct'
export GOROOT="$PREFIX/local/go"
export GOPATH="$HOME/go:$GOPATH"
export PATH="$PATH:/bin:/sbin:$PREFIX/bin:$PREFIX/sbin:$PREFIX/local/bin:$PREFIX/local/sbin:$HOME/.local/bin:$HOME/.local/sbin:$GOPATH/bin:$GOROOT/bin:$HOME/.cargo/bin:$JAVA_HOME/bin"
export ANTLR_JAR="$PREFIX/local/java/antlr-4.13.2-complete.jar"
export PLANTUML_JAR="$PREFIX/local/java/plantuml.jar"
export PGDATA="$PREFIX/var/lib/postgresql"
export PULSE_SERVER='127.0.0.1'
export DLFLAGS='-A -C'
