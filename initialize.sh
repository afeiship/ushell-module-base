#!/usr/bin/env bash

ROOT_PATH=$(pwd);
source $ROOT_PATH/function.sh;


$(
  cd ~;
  mkdir_with_check github;
  mkdir_with_check git-oschina;
);
