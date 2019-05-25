#!/bin/bash
# https://discordapp.com/download

# Releases
app_release='0.0.9';

# Install dependencies
sudo apt-get install -y libc++1 libc++abi1;

# Repositories and keys
wget https://dl.discordapp.net/apps/linux/${app_release}/discord-${app_release}.deb -P /tmp/;
sudo dpkg -i /tmp/discord-${app_release}.deb;
rm -f /tmp/discord-${app_release}.deb;

