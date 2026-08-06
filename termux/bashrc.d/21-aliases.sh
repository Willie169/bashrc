#!/data/data/com.termux/files/usr/bin/bash

alias getprop='/system/bin/getprop'
# shellcheck disable=2142
alias dfur='df $(dirname "$PREFIX") | tail -n1 | awk '"'"'{print $3}'"'"
# shellcheck disable=2142
alias dfhur='df -h $(dirname "$PREFIX") | tail -n1 | awk '"'"'{print $3}'"'"
