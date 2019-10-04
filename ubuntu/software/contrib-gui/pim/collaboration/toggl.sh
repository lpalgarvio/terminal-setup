#!/bin/bash
# https://support.toggl.com/en/articles/2410832-toggl-desktop-for-linux

# Releases
app_release='7.4.409';

# Install dependencies
sudo apt-get install -y libgstreamer1.0-0 libxss1 liblua50 libpococrypto50 libpocodata50 libpocodatasqlite50 libpocofoundation50 libpocojson50 libpoconet50 libpoconetssl50 libpocoutil50 libpocoxml50;

# Repositories and keys
wget https://github.com/toggl/toggldesktop/releases/download/v${app_release}/build-debian.toggldesktop_${app_release}_amd64.deb -P /tmp;
sudo dpkg -i /tmp/build-debian.toggldesktop_${app_release}_amd64.deb;
rm -f /tmp/build-debian.toggldesktop_${app_release}_amd64.deb;

