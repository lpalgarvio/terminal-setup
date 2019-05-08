#!/bin/bash
# https://www.google.com/tools/dlpage/hangoutplugin

# Install dependencies
sudo apt-get install -y libpango1.0-0;

# Repositories and keys
wget https://dl.google.com/linux/direct/google-talkplugin_current_amd64.deb -P /tmp/;
sudo dpkg -i /tmp/google-talkplugin_current_amd64.deb;
rm -f /tmp/google-talkplugin_current_amd64.deb;
sudo apt-get update;

# Install software
sudo apt-get install -y google-talkplugin;

