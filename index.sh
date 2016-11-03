#!/usr/bin/env bash
## path:
ROOT_PATH=$(dirname $BASH_SOURCE);
source $ROOT_PATH/function.sh;

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
alias mkcd='__mkcd(){ mkdir $1; cd $1; }; __mkcd';


## usm base modules:
alias usm-remove-all='rm -rf $BASH_BASE_PATH/ushell_modules'
alias usm-remove-item='__rm_usm_md(){ rm -rf $BASH_BASE_PATH/ushell_modules/ushell-module-$1; }; __rm_usm_md';

unset ROOT_PATH;
