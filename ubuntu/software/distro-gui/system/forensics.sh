#!/bin/bash

# Install software
sudo apt-get install -y autopsy \
                                   bleachbit sweeper \
                                   secure-delete wipe;

# Verifications
#$(which autopsy) -h;
$(which bleachbit) --version;
$(which sweeper) --version;
#$(which sfill) -h;
$(which wipe) -v;

