#!/usr/bin/env bash

shopt -s globstar
dir="$(cd -- "$(dirname -- "$0")" && pwd)"
for f in "$dir"/**/*.sh "$dir"/**/bashrc; do
	shfmt -w "$f"
	shellcheck "$f"
done
