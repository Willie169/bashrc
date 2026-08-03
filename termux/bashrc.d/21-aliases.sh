#!/data/data/com.termux/files/usr/bin/bash

# shellcheck disable=2142
alias dfur='df $(dirname "$PREFIX") | tail -n1 | awk '"'"'{print $3}'"'"
alias ccp='termux-clipboard-set'
alias cpt='termux-clipboard-get'
alias antlr4='java -Xmx500M -cp "$PREFIX/local/java/antlr-4.13.2-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "$PREFIX/local/java/antlr-4.13.2-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'
