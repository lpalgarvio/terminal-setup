#!/bin/bash
# https://rocket.chat/install

# Releases
app_release='2.11.0';

# Install dependencies
sudo apt-get install -y libappindicator1;

# Install software (client)
wget https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/${app_release}/rocketchat_${app_release}_amd64.deb -P /tmp/;
sudo dpkg -i /tmp/rocketchat_${app_release}_amd64.deb;
rm -f /tmp/rocketchat_${app_release}_amd64.deb;

