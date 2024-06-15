#!/bin/bash

yum update

if [[ $(cat /etc/redhat-release) == *"release 8"* ]]; then
    yum module enable -y container-tools:rhel8 
    yum module install -y container-tools:rhel8
elif [[ $(cat /etc/redhat-release) == *"release 7"* ]]; then
    subscription-manager repos --enable=rhel-7-server-extras-rpms
    yum -y install podman
elif [[ $(cat /etc/redhat-release) == *"release 9"* ]]; then
    yum install -y podman 
else
    echo "RHEL version found is not supported"
    exit 1
fi


