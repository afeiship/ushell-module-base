#!/usr/bin/env bash

killport() {
    # 显示帮助信息
    if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
        echo "用法：killport 端口号"
        echo ""
        echo "描述：杀死占用指定端口的进程"
        echo ""
        echo "示例："
        echo "  killport 3000    # 杀死占用 3000 端口的进程"
        echo "  kp 8080         # 使用 kp 别名杀死占用 8080 端口的进程"
        return 0
    fi

    # 必须传入端口参数
    if [ $# -ne 1 ]; then
        echo "用法：killport 端口号"
        echo "使用 'killport -h' 查看帮助信息"
        return 1
    fi

    local PORT="$1"
    local PID=$(lsof -t -i:"$PORT")

    if [ -z "$PID" ]; then
        echo "端口 $PORT 未被占用"
        return 0
    fi

    echo "正在杀死端口 $PORT 对应的进程 PID: $PID"
    kill -9 "$PID" && echo "✅ 成功杀死"
}

alias kp=killport
