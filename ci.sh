#!/usr/bin/env bash

shopt -s globstar

dir="$(cd -- "$(dirname -- "$0")" && pwd)"

for f in "$dir"/**/*.py; do
	autopep8 --in-place --aggressive --aggressive "$f"
	python3 "$f"
done

arr=("termux" "ubuntu-amd" "ubuntu-debian-arm-proot")
for d in "${arr[@]}"; do
	u="$dir/$d"/install.sh
	echo '#!/usr/bin/env sh

cd ~ || exit
rm -f .bashrc 2>/dev/null || true
rm -rf .bashrc.d 2>/dev/null || true
mkdir .bashrc.d
cd .bashrc.d || exit' >"$u"
	for f in "$dir"/bashrc.d/*.sh; do
		echo 'wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/'"$(basename "$f")" >>"$u"
	done
	for f in "$dir/$d"/bashrc.d/*.sh; do
		echo 'wget https://raw.githubusercontent.com/Willie169/bashrc/main/'"$d"'/bashrc.d/'"$(basename "$f")" >>"$u"
	done
	echo 'cd ~ || exit
wget https://raw.githubusercontent.com/Willie169/bashrc/main/'"$d"'/bashrc.d/bashrc -O .bashrc' >>"$u"
done

for f in "$dir"/**/*.sh "$dir"/**/bashrc; do
	chmod +x "$f"
	shfmt -w "$f"
	shellcheck -e 1090,1091 "$f"
done
