#!/usr/bin/env bash

if [ "$1" = "wikid" ]; then
    exec "node server"
fi

exec "$@"