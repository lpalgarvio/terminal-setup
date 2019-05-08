#!/bin/bash

# Install software
sudo apt-get install -y kodi \
                                   kodi-eventclients-wiiremote;

# Verifications
$(which kodi) --version;

