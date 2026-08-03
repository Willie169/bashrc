#!/data/data/com.termux/files/usr/bin/bash

# shellcheck disable=2142
alias getprop='/system/bin/getprop'
alias dfur='df $(dirname "$PREFIX") | tail -n1 | awk '"'"'{print $3}'"'"
alias ccp='termux-clipboard-set'
alias cpt='termux-clipboard-get'
