#!/bin/bash

yum install -y git
git init test-repo --initial-branch main
cp .pre-commit-config.yaml test-repo/
cd test-repo
pre-commit install
pre-commit install hooks
pre-commit run -a
