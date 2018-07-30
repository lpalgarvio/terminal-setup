#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y sleuthkit \
                                   testdisk \
                                   chntpw;

# Verifications
$(which testdisk) --version;
$(which chntpw) -h;

