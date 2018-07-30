#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y clamav clamav-freshclam libclamunrar7;

# Verifications
$(which clamscan) --version;

