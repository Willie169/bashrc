#!/usr/bin/env bash

shopt -s globstar

dir="$(cd -- "$(dirname -- "$0")" && pwd)"

for f in "$dir"/**/*.py; do
	autopep8 --in-place --aggressive --aggressive "$f"
	python3 "$f"
done

for f in "$dir"/**/*.sh "$dir"/**/bashrc; do
	chmod +x "$f"
	shfmt -w "$f"
	shellcheck -e 1090,1091 "$f"
done

arr=("termux" "ubuntu-amd" "ubuntu-debian-arm-proot")
for d in "${arr[@]}"; do
	u="$dir/bashrc.d/$d/install.sh"
	echo $'#!/usr/bin/env sh\n\ncd ~ || exit\nrm -f .bashrc 2>/dev/null || true\nrm -rf .bashrc.d 2>/dev/null || true\ngit clone --depth=1 https://github.com/Willie169/bashrc.git ~/.bashrc.d || exit' >"$u"
	for f in "$dir"/bashrc.d/shared/bashrc.d/*.sh; do
		echo "wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/shared/bashrc.d/$(basename "$f")" >>"$u"
	done
	for f in "$dir/bashrc.d/$d"/bashrc.d/*.sh; do
		echo "wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/$d/bashrc.d/$(basename "$f")" >>"$u"
	done
	echo 'cd ~ || exit' >>"$u"
	echo "wget https://raw.githubusercontent.com/Willie169/bashrc/main/bashrc.d/$d/bashrc.d/bashrc -O .bashrc" >>"$u"
	chmod +x "$u"
done
