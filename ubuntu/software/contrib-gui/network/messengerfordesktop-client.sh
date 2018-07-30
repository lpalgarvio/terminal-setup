#!/bin/bash
# https://github.com/aluxian/Messenger-for-Desktop/

# Releases
app_release='2.0.9';

# Install dependencies
sudo apt-get install -y libappindicator1;

# Install software (client)
wget https://github.com/aluxian/Messenger-for-Desktop/releases/download/v${app_release}/messengerfordesktop-${app_release}-linux-amd64.deb -P /tmp/;
sudo dpkg -i /tmp/messengerfordesktop-${app_release}-linux-amd64.deb;
rm -f /tmp/messengerfordesktop-${app_release}-linux-amd64.deb;

