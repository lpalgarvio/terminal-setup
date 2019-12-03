#!/bin/bash

# Install software
sudo apt-get install -y xserver-xorg-input-synaptics \
                                   tlp;

# Verifications
$(which tlp);

