#!/usr/bin/env bash

function ins() {
  if [ $# -eq 1 ]; then
    # 只有一个参数，保持现有逻辑
    cp "$1" /usr/local/bin/
  elif [ $# -eq 2 ]; then
    # 如果有两个参数，将 $1 复制到 /usr/local/bin/$2
    cp "$1" "/usr/local/bin/$2"
  else
    # 参数错误提示
    echo "Usage: ins <source> [destination]"
    return 1
  fi
}

function binfix() {
  # $1 为目录的 bin 文件
  # 如果没有 $1 参数，则提示使用方法
  if [ $# -eq 0 ]; then
    echo "Usage: binfix <binfile>"
    return 1
  fi

  # sudo xattr -d com.apple.quarantine $1
  cd /usr/local/bin
  sudo xattr -d com.apple.quarantine "$1"
}
