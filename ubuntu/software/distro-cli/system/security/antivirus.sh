#!/bin/bash

# Install software
sudo apt-get install -y clamav clamav-freshclam libclamunrar7;

# Verifications
$(which clamscan) --version;

