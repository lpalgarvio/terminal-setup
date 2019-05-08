#!/bin/bash
# https://store.steampowered.com/about/

# Install dependencies
sudo apt-get install -y zenity;

# Repositories and keys
wget http://repo.steampowered.com/steam/archive/precise/steam_latest.deb -P /tmp/;
sudo dpkg -i /tmp/steam_latest.deb;
rm -f /tmp/steam_latest.deb;
sudo apt-get update;

# Install software
sudo apt-get install -y steam;

