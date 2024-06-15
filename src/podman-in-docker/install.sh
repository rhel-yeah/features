#!/bin/bash

yum update
yum module enable -y container-tools 
yum module install -y container-tools
