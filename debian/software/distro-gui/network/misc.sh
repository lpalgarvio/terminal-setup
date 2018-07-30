#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y kdenetwork-filesharing \
                                   kde-zeroconf \
                                   browser-plugin-vlc \
                                   mozplugger \
                                   kpartsplugin \
                                   kpart-webkit \
                                   krfb krdc \
                                   greenwich;

# Remove software
sudo apt-get remove --purge kget;

# Verifications
$(which krfb) --version;
$(which krdc) --version;
$(which greenwich) --version;

