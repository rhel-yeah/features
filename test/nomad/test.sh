#!/bin/bash

nomad --version
if [ $? -eq 0 ]; then
  echo "Nomad is already installed"
  exit 0
fi