#!/bin/bash

if command -v git >/dev/null 2>&1; then
echo 'System has git installed.'
else
  echo '[INFO] Installing git...'
  dnf updateinfo
  dnf install -y git
fi

if command -v pip >/dev/null 2>&1; then
echo 'System has pip installed.'
else
  echo '[INFO] Installing pip...'
  dnf updateinfo
  dnf install -y python3*-pip
fi

pip install pre-commit
