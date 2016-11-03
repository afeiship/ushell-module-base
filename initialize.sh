#!/usr/bin/env bash

ROOT_PATH=$(dirname $BASH_SOURCE);
source $ROOT_PATH/function.sh;


$(
  cd ~;
  mkdir_with_check github;
  mkdir_with_check git-oschina;
  mkdir_with_check soft;
);


unset ROOT_PATH;
