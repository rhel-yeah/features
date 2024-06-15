#!/bin/bash

source dev-container-features-test-lib

check "RHEL Version" cat /etc/redhat-release | grep "release 8"

podman info
podman --help
podman pull docker.io/library/redis:latest