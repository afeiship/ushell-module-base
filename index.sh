#!/usr/bin/env bash
## path:
ROOT_PATH=$(dirname $BASH_SOURCE)
BASE_NAME=$(basename $(pwd))

## colorful your terimnal:
# PS1='\e[32m\u@\h:[PWD:\w]\n$\e[m';
PS1="\[[\e[1;32m\]\u\[\e[m\]\[\e[1;36m\]@\[\e[m\]\[\e[1;35m\]\h\[\e[m\]:\w]\n\$ "

## base:

source $ROOT_PATH/modules/01-edit.sh
source $ROOT_PATH/modules/02-direnv.sh
source $ROOT_PATH/modules/_ins.sh
source $ROOT_PATH/modules/_mkp.sh
source $ROOT_PATH/modules/cd.sh
source $ROOT_PATH/modules/aliyun.sh
source $ROOT_PATH/modules/crontab.sh
source $ROOT_PATH/modules/grep.sh
source $ROOT_PATH/modules/ip.sh
source $ROOT_PATH/modules/kill.sh
source $ROOT_PATH/modules/shorty.sh
source $ROOT_PATH/modules/tail.sh
source $ROOT_PATH/modules/yazi.sh

# Edit file
alias reload='source $BASH_BASE_PATH/src/index.sh'
alias bakup='cd ~/github/macos-backup/ && gg "feat(daily): automatic backup mac files" && cd -'
alias mkd="$ROOT_PATH/modules/_mkd.sh"

## aliases:
alias cwd="pwd | tr -d '\n' | pbcopy"
alias cls='clear'
alias sz='du -hs *'
alias szz='du -hks'
alias szm="ps aux --sort=-%mem | head"
alias count='ls | wc -l'
alias ubin='cd /usr/local/bin'

# brew install expect
alias mkpw='mkpasswd'
alias mkpwp='mkpasswd | pbcopy'

unset ROOT_PATH
