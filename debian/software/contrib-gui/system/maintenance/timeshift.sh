#!/bin/bash
# https://github.com/teejee2008/timeshift
# https://itsfoss.com/backup-restore-linux-timeshift

# Releases
app_release='19.08.1';

# Install dependencies
sudo apt-get install -y psmisc;

# Install software
wget https://github.com/teejee2008/timeshift/releases/download/v${app_release}/timeshift_${app_release}_amd64.deb -P /tmp/;
sudo dpkg -i /tmp/timeshift_${app_release}_amd64.deb;
rm -f /tmp/timeshift_${app_release}_amd64.deb;

