#!/bin/bash
# https://slack.com/downloads/instructions/ubuntu

# Releases
app_release='4.0.2';

# Install dependencies
sudo apt-get install -y libappindicator1 gconf2 gir1.2-gnomekeyring-1.0 gvfs-bin;

# Install software (client)
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-${app_release}-amd64.deb -P /tmp/;
sudo dpkg -i /tmp/slack-desktop-${app_release}-amd64.deb;
rm -f /tmp/slack-desktop-${app_release}-amd64.deb;

