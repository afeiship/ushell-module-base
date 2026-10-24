#!/usr/bin/env bash

# alias cx="cxc && source ~/.config/cx/boot.sh"


gopath_bin="/usr/local/bin/cx"
function :cx() {
    eval "$( "$gopath_bin" "$@" )"
}
