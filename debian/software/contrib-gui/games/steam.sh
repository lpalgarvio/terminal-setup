#!/bin/bash
# https://store.steampowered.com/about/

# Repositories and keys
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb -P /tmp/;
sudo dpkg -i /tmp/steam.deb;
rm -f /tmp/steam.deb;
sudo apt-get update;

# Install software
sudo apt-get install -y steam;

