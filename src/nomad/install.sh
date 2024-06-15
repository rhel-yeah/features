#!/bin/bash

echo "
     _____        _____        _____        _____         _____                                  
  __|__   |__  __|  _  |__  __|___  |__  __|_    |__  ___|  _  |__  ______  ____    __   _  ___  
 |     |     ||  |_| |    ||   ___|    ||    |      | \ \  //     ||   ___||    \  |  |_| ||   | 
 |     \     ||   _  |    ||   ___|    ||    |_     | |\ \//      ||   ___||     \ |   _  ||___| 
 |__|\__\  __||__| |_|  __||______|  __||______|  __| |/__/     __||______||__|\__\|__| |_||___| 
    |_____|      |_____|      |_____|      |_____|       |_____|                                 
"                                                                                                 

echo "[INFO] Installing yum-utils"
sudo yum install -y yum-utils
echo "[INFO] Adding HashiCorp repository"
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
echo "[INFO] Installing Nomad"
sudo yum -y install nomad