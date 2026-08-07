#!/usr/bin/env sh

cd ~ || exit
rm -f .bashrc 2>/dev/null || true
rm -rf .bashrc.d 2>/dev/null || true
mkdir .bashrc.d
cd .bashrc.d || exit
wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/shared/bashrc.d/10-shared-exports.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/shared/bashrc.d/20-shared-aliases.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/shared/bashrc.d/30-shared-functions.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/shared/bashrc.d/40-shared-color.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/00-env.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/11-exports.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/21-aliases.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/22-vnc.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/23-flatpak.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/31-functions.sh
wget https://raw.githubusercontent.com/Willie169/bashrc/main/ubuntu-amd/bashrc.d/41-color.sh
cd ~ || exit
wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/ubuntu-amd/bashrc.d/bashrc -O .bashrc
