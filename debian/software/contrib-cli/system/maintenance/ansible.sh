#!/bin/bash
# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

# Repositories and keys
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 93C4A3FD7BB9C367;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/ansible.list
# Ansible
deb http://ppa.launchpad.net/ansible/ansible/ubuntu bionic main
EOF";
sudo apt-get update;

# Install software
sudo apt-get install -y ansible;

