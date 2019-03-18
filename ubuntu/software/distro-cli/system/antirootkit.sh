#!/bin/bash

# Install software
sudo apt-get install -y aide \
                                   chkrootkit \
                                   rkhunter \
                                   unhide;

# Verifications
$(which aide) --version;
$(which chkrootkit) -V;
$(which rkhunter) --version;
$(which unhide) --version;

