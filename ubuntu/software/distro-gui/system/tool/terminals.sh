#!/bin/bash

# Install software
sudo apt-get install -y konsole yakuake tilix;

# Verifications
$(which konsole) --version;
#$(which yakuake) --version;
$(which tilix) --version;

