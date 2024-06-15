#!/bin/bash
alias docker=podman
podman info
docker --help
docker pull docker.io/library/redis:latest