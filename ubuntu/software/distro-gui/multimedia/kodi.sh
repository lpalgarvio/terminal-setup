#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y kodi \
                                   kodi-eventclients-wiiremote;

# Verifications
$(which kodi) --version;

