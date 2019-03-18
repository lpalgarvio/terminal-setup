#!/bin/bash

# Install software
sudo apt-get install -y sleuthkit \
                                   testdisk \
                                   chntpw;

# Verifications
$(which testdisk) --version;
$(which chntpw) -h;

