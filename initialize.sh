#!/usr/bin/env bash

ROOT_PATH=$(dirname $BASH_SOURCE);
source $ROOT_PATH/function.sh;


npm i -g del-cli
npm i -g ntl
npm i -g yo
npm i -g release-it
npm i -g @feizheng/git-url-cli


unset ROOT_PATH;
