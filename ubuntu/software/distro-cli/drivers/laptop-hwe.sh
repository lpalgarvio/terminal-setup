#!/bin/bash

# Install software
sudo apt-get install -y xserver-xorg-input-synaptics-hwe-18.04 \
                                   tlp;

# Verifications
$(which tlp);

