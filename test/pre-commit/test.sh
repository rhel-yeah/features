#!/bin/bash

yum install -y git
git init .
pre-commit run -a
