#!/bin/bash

# Install software
sudo apt-get install -y vlc-bin vlc-plugin-samba;

# Verifications
$(which vlc) --version;

