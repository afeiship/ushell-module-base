#!/usr/bin/env bash

killport() {
    # 必须传入端口参数
    if [ $# -ne 1 ]; then
        echo "用法：killport 端口号"
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
