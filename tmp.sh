#!/usr/bin/env bash

shopt -s globstar

dir="$(cd -- "$(dirname -- "$0")" && pwd)"

for f in "$dir"/**/*; do
    sed -i 's/gh_latest_r/gh_release -r/g; s/gh_latest/gh_release/g' "$f"
done
