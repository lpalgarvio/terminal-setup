#!/bin/bash

# Install software
sudo apt-get install -y kdenetwork-filesharing \
                                   kde-zeroconf \
                                   kpartsplugin \
                                   krfb krdc;

# Remove software
sudo apt-get remove --purge -y kget;

# Verifications
$(which krfb) --version;
$(which krdc) --version;

