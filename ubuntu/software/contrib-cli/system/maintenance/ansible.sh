#!/bin/bash
# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

# Repositories and keys
sudo apt-add-repository --yes --update ppa:ansible/ansible;

# Install software
sudo apt-get install -y ansible;

