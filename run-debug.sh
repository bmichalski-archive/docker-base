#!/bin/bash
docker run \
-it bmichalski/base \
bash -c "/root/base/on-startup.sh &&
bash"
