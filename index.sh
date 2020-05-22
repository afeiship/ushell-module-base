#!/usr/bin/env bash
## path:
ROOT_PATH=$(dirname $BASH_SOURCE);
BASE_NAME=$(basename `pwd`)


## colorful your terimnal:
# PS1='\e[32m\u@\h:[PWD:\w]\n$\e[m';
PS1="\[[\e[1;32m\]\u\[\e[m\]\[\e[1;36m\]@\[\e[m\]\[\e[1;35m\]\h\[\e[m\]:\w]\n\$ ";

## base:
source $ROOT_PATH/function.sh;
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
alias su-root='sudo su root';
alias cls='clear';
alias g-remove='rm -rf * .* *.*';
alias g-cp='rsync -av --progress';
alias mkcd='_(){ mkdir $1; cd $1; }; _';
alias rmf='rm -rf';
alias size='du -hs *';

# open
alias o="open ."
alias op="open "
alias opp="open https://github.com/afeiship/$BASE_NAME"


## usm base modules:
alias usm-remove-all='rm -rf $BASH_BASE_PATH/ushell_modules'
alias usm-remove-item='_(){ rm -rf $BASH_BASE_PATH/ushell_modules/ushell-module-$1; }; _';

unset ROOT_PATH;
