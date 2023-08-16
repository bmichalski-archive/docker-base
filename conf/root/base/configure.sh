#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "`/sbin/ip route|awk '/default/ { print $3 }'` dockerhost" >> /etc/hosts

$DIR/configure-proxies.sh
