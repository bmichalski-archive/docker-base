#!/bin/bash

echo 'Acquire::Retries 0;
Acquire::http::Proxy-Auto-Detect "/root/base/detect-proxy.sh";' >> /etc/apt/apt.conf.d/01proxy
