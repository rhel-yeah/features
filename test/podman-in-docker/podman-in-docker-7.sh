#!/bin/bash

check "RHEL Version" cat /etc/redhat-release | grep "release 7"

echo "[INFO]: RHEL 7 support is available for those using paid subscriptions."