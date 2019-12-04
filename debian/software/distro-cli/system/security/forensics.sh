#!/bin/bash

# Install software
sudo apt-get install -y zerofree \
                                   sleuthkit \
                                   testdisk \
                                   chntpw;

# Verifications
$(which zerofree) -h;
$(which testdisk) --version;
$(which chntpw) -h;

