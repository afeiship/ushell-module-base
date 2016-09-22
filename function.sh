#!/usr/bin/env bash
mkdir_with_check() {
  if [ ! -d $1 ]; then
    mkdir $1;
  fi
}
