#!/bin/bash

echo "
     _____        _____        _____        _____         _____                                  
  __|__   |__  __|  _  |__  __|___  |__  __|_    |__  ___|  _  |__  ______  ____    __   _  ___  
 |     |     ||  |_| |    ||   ___|    ||    |      | \ \  //     ||   ___||    \  |  |_| ||   | 
 |     \     ||   _  |    ||   ___|    ||    |_     | |\ \//      ||   ___||     \ |   _  ||___| 
 |__|\__\  __||__| |_|  __||______|  __||______|  __| |/__/     __||______||__|\__\|__| |_||___| 
    |_____|      |_____|      |_____|      |_____|       |_____|                                 
"  

echo "[INFO] Updating sources"
yum update

echo "[INFO] Determining RHEL version and installing podman"
if [[ $(cat /etc/redhat-release) == *"release 8"* ]]; then
    yum module enable -y container-tools:rhel8 
    yum module install -y container-tools:rhel8
elif [[ $(cat /etc/redhat-release) == *"release 7"* ]]; then
    echo "RHEL 7 is currently not supported as a RHEL subscription is required to install."
elif [[ $(cat /etc/redhat-release) == *"release 9"* ]]; then
    yum install -y podman 
else
    echo "RHEL version found is not supported"
    exit 1
fi
echo "[INFO] Podman installed successfully"

