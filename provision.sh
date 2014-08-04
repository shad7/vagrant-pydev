#!/usr/bin/env bash

apt-get -qq update
apt-get -qq install -y python-pip
pip -q install ansible

cd /vagrant
mkdir -p /etc/ansible
# copy host list to default ansible location
# then set to read-only to avoid being executed
cp provision/initial_hosts /etc/ansible/hosts
chmod 644 /etc/ansible/hosts
ansible-playbook ${1}
