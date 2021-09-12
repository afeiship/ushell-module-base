#!/usr/bin/env bash
## path:
ROOT_PATH=$(dirname $BASH_SOURCE);
BASE_NAME=$(basename `pwd`)


## colorful your terimnal:
# PS1='\e[32m\u@\h:[PWD:\w]\n$\e[m';
PS1="\[[\e[1;32m\]\u\[\e[m\]\[\e[1;36m\]@\[\e[m\]\[\e[1;35m\]\h\[\e[m\]:\w]\n\$ ";

## base:
source $ROOT_PATH/modules/cd.sh;
source $ROOT_PATH/modules/chmod.sh;
source $ROOT_PATH/modules/chown.sh;
source $ROOT_PATH/modules/shorty.sh;

# Edit file
alias reload='source $BASH_BASE_PATH/src/index.sh';
alias bakup='cd ~/github/macos-backup/ && gg "feat(daily): automatic backup mac files" && cd -';

## aliases:
# alias cwd="pwd | tr -d '\n' | pbcopy";
alias cwd="clipy `pwd | tr -d '\n'`";
alias cls='clear';
alias size='du -hs *';

unset ROOT_PATH;
