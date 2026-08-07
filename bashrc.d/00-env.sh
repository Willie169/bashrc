#!/usr/bin/env bash

case $- in
*i*) ;;
*) return ;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s checkwinsize
shopt -s globstar
