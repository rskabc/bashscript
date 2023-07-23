#!/bin/bash
echo "Banner /etc/ssh/banner" |  tee -a /etc/ssh/sshd_config
wget https://raw.githubusercontent.com/rskabc/template/main/fornet/banner -P /etc/ssh/
systemctl restart sshd
