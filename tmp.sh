#!/usr/bin/env bash

shopt -s globstar

dir="$(cd -- "$(dirname -- "$0")" && pwd)"

for f in "$dir"/**/* "$dir"/*; do
	test -f "$f" && sed -i 's/gh_release -r/gh_release -r/g; s/gh_release/gh_release/g' "$f"
done
