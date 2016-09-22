#!/usr/bin/env bash
## path:
ROOT_PATH=$(pwd);

## base:
source $ROOT_PATH/cd.sh;
source $ROOT_PATH/chmod.sh;
alias usm-base-reload="source ${ROOT_PATH}/index.sh";

## aliases:
alias ll='ls -al';
alias cwd="pwd | tr -d '\n' | pbcopy";
alias su-root='sudo su root';
alias cls='clear';
alias g-remove='rm -rf * .* *.*';
alias g-cp='rsync -av --progress';
