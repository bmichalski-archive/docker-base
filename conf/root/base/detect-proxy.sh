#!/bin/bash

PROXY=dockerhost

nc -z $PROXY 8000

if [ $? -eq 0 ]; then
    PROXY=http://$PROXY:8000
    printf '\x0d%s\n' "Using $PROXY as proxy." >&2
    echo "$PROXY"
    exit
fi

printf '\x0d%s\n' "No proxy will be used." >&2
