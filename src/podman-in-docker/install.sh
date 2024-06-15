#!/bin/bash

yum update

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


