#!/bin/bash

echo "
     _____        _____        _____        _____         _____                                  
  __|__   |__  __|  _  |__  __|___  |__  __|_    |__  ___|  _  |__  ______  ____    __   _  ___  
 |     |     ||  |_| |    ||   ___|    ||    |      | \ \  //     ||   ___||    \  |  |_| ||   | 
 |     \     ||   _  |    ||   ___|    ||    |_     | |\ \//      ||   ___||     \ |   _  ||___| 
 |__|\__\  __||__| |_|  __||______|  __||______|  __| |/__/     __||______||__|\__\|__| |_||___| 
    |_____|      |_____|      |_____|      |_____|       |_____|                                 
"  

echo "[INFO] Adding GitHub CLI repository"
yum config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
echo "[INFO] Installing GitHub CLI"
yum -y install gh
echo "[INFO] GitHub CLI installed successfully"