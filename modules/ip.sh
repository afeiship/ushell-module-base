#!/usr/bin/env bash

if [[ $(uname) == Darwin ]]; then
    export SERVER_IP='127.0.0.1';
else
    export SERVER_IP=`wget -qO- icanhazip.com -T 2`;
fi




