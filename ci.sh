#!/usr/bin/env bash

shopt -s globstar
dir="$(cd -- "$(dirname -- "$0")" && pwd)"
arr=( "termux" "ubuntu-amd" "ubuntu-debian-arm-proot" )
for d in "${arr[@]}"; do

for f in "$dir"/**/*.sh "$dir"/**/bashrc; do
	chmod +x "$f"
	shfmt -w "$f"
	perl -0777 -i -pe 's/\n*\z/\n/' "$f"
	shellcheck "$f"
done
