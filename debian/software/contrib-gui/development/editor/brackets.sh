#!/bin/bash
# https://github.com/adobe/brackets

# Releases
app_release='1.13';

# Install software
wget https://github.com/adobe/brackets/releases/download/release-${app_release}/Brackets.Release.${app_release}.64-bit.deb -P /tmp/;
sudo dpkg -i /tmp/Brackets.Release.${app_release}.64-bit.deb;
rm -f /tmp/Brackets.Release.${app_release}.64-bit.deb;

