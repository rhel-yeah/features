#!/bin/bash

source dev-container-features-test-lib

check "RHEL Version" cat /etc/redhat-release | grep "release 9"

alias docker=podman
podman info
docker --help
docker pull docker.io/library/redis:latest