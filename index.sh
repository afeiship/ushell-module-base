#!/usr/bin/env bash
ROOT_PATH=$(pwd);

source $ROOT_PATH/cd.sh;
source $ROOT_PATH/chmod.sh;
alias ll='ls -al';
alias cwd="pwd | tr -d '\n' | pbcopy";
alias su-root='sudo su root';
alias cls='clear';
alias g-remove='rm -rf * .* *.*';
alias g-cp='rsync -av --progress';
