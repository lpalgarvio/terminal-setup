#!/bin/bash

# Install software
sudo apt-get install -y phonon-backend-vlc \
                                   vlc vlc-plugin-notify;

# Verifications
$(which vlc) --version;

