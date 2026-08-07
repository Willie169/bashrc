#!/usr/bin/env sh

cd ~ || exit
rm -f .bashrc 2>/dev/null || true
rm -rf .bashrc.d 2>/dev/null || true
mkdir .bashrc.d
cd .bashrc.d || exit
wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/shared/10-shared-exports.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/shared/20-shared-aliases.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/shared/30-shared-functions.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/shared/40-shared-color.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/install.sh
cd ~ || exit
wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/ubuntu-amd/bashrc -O .bashrc
