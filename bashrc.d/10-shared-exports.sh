#!/usr/bin/env bash

if [ "${HOME}" = '/data/data/com.termux/files/home' ] || [ "${PREFIX:-}" = '/data/data/com.termux/files/usr' ]; then
    export IS_TERMUX=1
else
    export IS_TERMUX=0
fi
if [ "$EUID" -eq 0 ]; then
    export IS_ROOT=1
else
    export IS_ROOT=0
fi
