#!/bin/bash
# https://eid.belgium.be/en/linux-eid-software-installation

# Releases
app_release='2019.1';

# Repositories and keys
wget https://eid.belgium.be/sites/default/files/software/eid-archive_${app_release}_all.deb -P /tmp/ -O /tmp/eid-archive_${app_release}_all.deb;
sudo dpkg -i /tmp/eid-archive_${app_release}_all.deb;
rm -f /tmp/eid-archive_${app_release}_all.deb;
sudo apt-get update;

# Install software
sudo apt-get install -y eid-viewer eid-mw;

# Install plugins
sudo apt-get install -y beid-mozilla-extension;

