#!/usr/bin/env bash

shopt -s globstar

dir="$(cd -- "$(dirname -- "$0")" && pwd)"

for f in "$dir"/**/*.py; do
	autopep8 --in-place --aggressive --aggressive "$f"
	python3 "$f"
done

for f in "$dir"/**/*.sh "$dir"/**/bashrc; do
	if [ -f "$f" ]; then
		chmod +x "$f"
		shfmt -w "$f"
		shellcheck -e 1090,1091 "$f"
	fi
done
