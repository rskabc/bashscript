#!/bin/bash
apt  update
apt install -y python3 python3-pip sshpass
pip3 install ansible
ansible --version
mkdir /etc/ansible
echo "[Node1]\n2.31.51.3 ansible_ssh_user=rskabc\n[Node2]\n172.31.51.5 ansible_ssh_user=rskabc" |  tee -a /etc/ansible/hosts
ssh-keygen -t rsa
