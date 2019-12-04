#!/bin/bash

# Install software
sudo apt-get install -y xterm konsole yakuake tilix;

# Verifications
$(which xterm) -version;
$(which konsole) --version;
#$(which yakuake) --version;
$(which tilix) --version;

