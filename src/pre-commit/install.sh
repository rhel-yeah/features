#!/bin/bash

echo "
     _____        _____        _____        _____         _____                                  
  __|__   |__  __|  _  |__  __|___  |__  __|_    |__  ___|  _  |__  ______  ____    __   _  ___  
 |     |     ||  |_| |    ||   ___|    ||    |      | \ \  //     ||   ___||    \  |  |_| ||   | 
 |     \     ||   _  |    ||   ___|    ||    |_     | |\ \//      ||   ___||     \ |   _  ||___| 
 |__|\__\  __||__| |_|  __||______|  __||______|  __| |/__/     __||______||__|\__\|__| |_||___| 
    |_____|      |_____|      |_____|      |_____|       |_____|                                 
"  

echo "[INFO] Installing pre-commit dependencies"
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

echo "[INFO] Installing pre-commit"
pip install pre-commit
echo "[INFO] Pre-commit installed successfully"
