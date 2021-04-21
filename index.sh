#!/usr/bin/env bash
## path:
ROOT_PATH=$(dirname $BASH_SOURCE);
BASE_NAME=$(basename `pwd`)


## colorful your terimnal:
# PS1='\e[32m\u@\h:[PWD:\w]\n$\e[m';
PS1="\[[\e[1;32m\]\u\[\e[m\]\[\e[1;36m\]@\[\e[m\]\[\e[1;35m\]\h\[\e[m\]:\w]\n\$ ";

## base:
source $ROOT_PATH/cd.sh;
source $ROOT_PATH/chmod.sh;
source $ROOT_PATH/chown.sh;

# Edit file
alias alias-edit='code $BASH_BASE_PATH';
alias alias-reload='source $BASH_BASE_PATH/src/index.sh';
alias backup='cd ~/github/macos-backup/ && gg "feat(daily): automatic backup mac files" && cd -';

## aliases:
alias ll='ls -al';
alias cwd="pwd | tr -d '\n' | pbcopy";
alias cls='clear';
alias size='du -hs *';
alias o="open .";
alias x="exit";

unset ROOT_PATH;
