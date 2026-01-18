#!/usr/bin/env bash

function mkp() {
  mkdir -p "$1" && cd "$1"
}

mkfile() {
  local force=0

  # 解析选项
  while [[ $# -gt 0 && "$1" == -* ]]; do
    case "$1" in
      -f|--force) force=1; shift ;;
      -h|--help)
        echo "Usage: mkfile [-f] <file-path> [content...]"
        echo "  -f, --force    Overwrite if file exists"
        echo "  If content is provided, it will be written to the file."
        echo "  If not, an empty file is created (or stdin if piped)."
        return 0
        ;;
      *)
        echo "❌ Unknown option: $1" >&2
        return 1
        ;;
    esac
  done

  if [[ $# -eq 0 ]]; then
    echo "Usage: mkfile [-f] <file-path> [content...]" >&2
    echo "  Use -h for more help" >&2
    return 1
  fi

  local filepath="$1"
  shift

  # 创建父目录
  local dirpath
  dirpath="$(dirname "$filepath")"
  if [[ -n "$dirpath" && "$dirpath" != "." ]]; then
    mkdir -p "$dirpath" || return 1
  fi

  # 检查文件是否已存在
  if [[ -e "$filepath" ]]; then
    if [[ $force -eq 1 ]]; then
      echo "⚠️  Overwriting: $filepath"
    else
      echo "❌ File already exists: $filepath (use -f to overwrite)" >&2
      return 1
    fi
  fi

  # 写入内容
  if [[ $# -gt 0 ]]; then
    printf '%s\n' "$*" > "$filepath"
  elif [[ ! -t 0 ]]; then
    cat > "$filepath"
  else
    touch "$filepath"
  fi

  echo "✅ Created: $filepath"
}
