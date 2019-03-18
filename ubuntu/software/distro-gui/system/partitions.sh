#!/bin/bash

# Install software
sudo apt-get install -y gparted \
                                   partitionmanager;

# Verifications
#$(which gparted) --version;
$(which partitionmanager) --version;

