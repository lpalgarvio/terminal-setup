#!/bin/bash
# https://www.vagrantup.com/downloads.html

# Releases
app_release='2.1.2';

# Install software
wget https://releases.hashicorp.com/vagrant/${app_release}/vagrant_${app_release}_x86_64.deb -P /tmp/ -O /tmp/vagrant_${app_release}_x86_64.deb;
sudo dpkg -i /tmp/vagrant_${app_release}_x86_64.deb;
rm -f /tmp/vagrant_${app_release}_x86_64.deb;

# Install software
sudo apt-get install -y vagrant vagrant-lxc;

# Verifications
$(which vagrant) --version;

