#!/usr/bin/env bash
## path:
ROOT_PATH=$(dirname $BASH_SOURCE);

## base:
source $ROOT_PATH/cd.sh;
source $ROOT_PATH/chmod.sh;

## aliases:
alias ll='ls -al';
alias cwd="pwd | tr -d '\n' | pbcopy";
alias su-root='sudo su root';
alias cls='clear';
alias g-remove='rm -rf * .* *.*';
alias g-cp='rsync -av --progress';
alias rm-usm='rm -rf $BASH_BASE_PATH/ushell_modules/ushell-module-'
alias rm-usm-md='rm -rf $BASH_BASE_PATH/ushell_modules/ushell-module-$0';

unset ROOT_PATH;
