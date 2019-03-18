#!/bin/bash

# Install software
sudo apt-get install -y hdparm \
                                   sdparm \
                                   smartmontools;

# Verifications
$(which sdparm) --version;
$(which smartctl) --version;

