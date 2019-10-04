#!/bin/bash
# https://docs.mattermost.com/install/desktop.html#linux

# Releases
app_release='4.2.3';

# Install dependencies
sudo apt-get install -y libappindicator1 gconf2;

# Install software (client)
wget https://releases.mattermost.com/desktop/${app_release}/mattermost-desktop-${app_release}-linux-amd64.deb -P /tmp/;
sudo dpkg -i /tmp/mattermost-desktop-${app_release}-linux-amd64.deb;
rm -f /tmp/mattermost-desktop-${app_release}-linux-amd64.deb;

