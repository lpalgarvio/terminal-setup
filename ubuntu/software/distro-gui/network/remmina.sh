#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y remmina \
                                   remmina-plugin-rdp \
                                   remmina-plugin-vnc;

# Verifications
$(which remmina) --version;

