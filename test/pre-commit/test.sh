#!/bin/bash

yum install -y git
git init test-repo
pushd test-repo
pre-commit run -a
