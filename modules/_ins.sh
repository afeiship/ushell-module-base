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
