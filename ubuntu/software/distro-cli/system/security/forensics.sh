#!/bin/bash

# Install software
sudo apt-get install -y wipe zerofree secure-delete \
                                   sleuthkit \
                                   testdisk \
                                   chntpw;

# Verifications
$(which wipe) -v;
$(which zerofree) -h;
$(which sfill) -h;
$(which testdisk) --version;
$(which chntpw) -h;

