#!/bin/bash
apt update
apt install -y sudo
echo "rskabc  ALL=(ALL:ALL) ALL"  |  tee -a /etc/sudoers
