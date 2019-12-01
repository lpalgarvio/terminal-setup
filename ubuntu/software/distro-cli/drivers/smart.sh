#!/bin/bash

# Install software
sudo apt-get install -y hdparm \
                                   sdparm \
                                   idle3-tools \
                                   smartmontools;

# Verifications
$(which hdparm) -V;
$(which sdparm) --version;
$(which idle3ctl) -V;
$(which smartctl) --version;

