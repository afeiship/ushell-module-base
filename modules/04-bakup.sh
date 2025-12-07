#!/usr/bin/env bash

bakup() {
  (
    cd ~/github/macos-backup/ &&
    git add . &&
    claude-ai commit --push
  )
}
