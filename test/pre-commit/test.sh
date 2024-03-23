#!/bin/bash

yum install -y git
git init test-repo
popd test-repo
pre-commit run -a
