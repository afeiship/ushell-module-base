#!/usr/bin/env bash

# ls-info - 通用系统信息显示脚本 (macOS & Linux)

# 获取操作系统类型
OS=$(uname -s)

echo "=== 系统信息 ==="

case "$OS" in
    "Linux")
        echo "操作系统: Linux"

        # 使用 lsb_release 获取发行版信息（如果存在）
        if command -v lsb_release >/dev/null 2>&1; then
            echo "发行版信息:"
            lsb_release -a 2>/dev/null | sed 's/^/  /'
        else
            echo "发行版信息: lsb_release 命令不可用"
            # 尝试读取 /etc/os-release
            if [ -f /etc/os-release ]; then
                . /etc/os-release
                echo "  发行版: $NAME ($VERSION_ID)"
            else
                echo "  无法获取详细发行版信息"
            fi
        fi

        # 内核信息
        echo "内核版本: $(uname -r)"
        echo "主机名: $(hostname)"
        ;;

    "Darwin")
        echo "操作系统: macOS"
        echo "系统版本: $(sw_vers -productName) $(sw_vers -productVersion) (Build: $(sw_vers -buildVersion))"
        echo "内核版本: $(uname -r)"
        echo "主机名: $(hostname)"
        ;;

    *)
        echo "未知操作系统: $OS"
        ;;
esac

echo "架构: $(uname -m)"
echo "当前用户: $(whoami)"
echo "当前时间: $(date)"