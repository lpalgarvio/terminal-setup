#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y sudo xterm \
                                   apt aptitude \
                                   debconf debconf-i18n \
                                   deborphan dselect \
                                   popularity-contest;

# Verifications
$(which sudo) --version;
$(which apt-get) --version;
$(which aptitude) --version;

