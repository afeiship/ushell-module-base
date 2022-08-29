#!/usr/bin/env bash

# server ip
export SERVER_IP=`wget -qO- ipecho.net/plain -T 2`;
# for macos
if [[ $(uname) == Darwin ]]; then
    export SERVER_IP='127.0.0.1';
fi


