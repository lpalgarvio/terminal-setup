#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y phonon-backend-vlc \
                                   vlc vlc-plugin-notify;

# Verifications
$(which vlc) --version;

