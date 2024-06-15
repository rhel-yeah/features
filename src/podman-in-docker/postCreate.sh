#!/bin/bash

mkdir -p /tmp/run/user/$(id -u) && chmod 0700 /tmp/run/user/$(id -u)

podman system migrate
source aliases.sh