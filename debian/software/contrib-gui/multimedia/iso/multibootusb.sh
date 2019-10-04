#!/bin/bash
# http://multibootusb.org/page_download
# https://github.com/mbusb/multibootusb

# Releases
app_release='9.2.0';
app_release_file='9.2.0-1';

# Repositories and keys
sudo apt-get update;

# Install dependencies
sudo apt-get install -y python3-pyudev;

# Install software
wget https://github.com/mbusb/multibootusb/releases/download/v${app_release}/python3-multibootusb_${app_release_file}_all.deb -P /tmp/ -O /tmp/python3-multibootusb_${app_release_file}_all.deb;
sudo dpkg -i /tmp/python3-multibootusb_${app_release_file}_all.deb;
rm -f /tmp/python3-multibootusb_${app_release_file}_all.deb;

