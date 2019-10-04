#!/bin/bash
# https://github.com/yakyak/yakyak

# Releases
app_release='1.5.1';

# Install dependencies
sudo apt-get install -y libappindicator1;

# Install software (client)
wget https://github.com/yakyak/yakyak/releases/download/v${app_release}/yakyak-${app_release}-linux-amd64.deb -P /tmp/;
sudo dpkg -i /tmp/yakyak-${app_release}-linux-amd64.deb;
rm -f /tmp/yakyak-${app_release}-linux-amd64.deb;

