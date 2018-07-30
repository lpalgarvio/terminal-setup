#!/bin/bash
# https://github.com/sindresorhus/caprine

# Releases
app_release='2.16.0';

# Install dependencies
sudo apt-get install -y libappindicator1;

# Install software (client)
wget https://github.com/sindresorhus/caprine/releases/download/v${app_release}/caprine_${app_release}_amd64.deb -P /tmp/;
sudo dpkg -i /tmp/caprine_${app_release}_amd64.deb;
rm -f /tmp/caprine_${app_release}_amd64.deb;

