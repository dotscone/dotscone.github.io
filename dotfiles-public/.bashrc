#!/bin/bash

export LANGUAGE=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8
export LANG=ja_JP.UTF-8
export HISTCONTROL=ignorespace:ignoredups:erasedups

alias ls='ls -p --color'
alias la='ls -Ap --color'
alias ll='ls -lp --color'

alias gis='git status'
alias gil="git log --date=short --pretty='format:%C(yellow)%h %C(green)%cd %C(blue)%an%C(red)%d %C(reset)%s' "
alias gip="git log --pretty=fuller --graph"
alias gid="git diff -w --word-diff=porcelain"
alias git-commit-id='git log --format="%h"'
alias gitlast='git-commit-id . | head -1 | git show '
alias gitref='git log --oneline --graph --reflog --pretty=format:"%C(yellow)%h%C(reset) %C(green)(%cr)%C(reset) %C(blue)%s%C(reset)" '

shopt -s histappend

complete -d cd
complete -d rmdir

chcp.com 65001

if [ -e ~/.bash_lastdir ]
then
 cd `head -1 ~/.bash_lastdir`
else
 test -d ~/source/repos && cd ~/source/repos
fi

