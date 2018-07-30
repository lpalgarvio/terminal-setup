#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software (client and server)
sudo apt-get install -y samba \
                                   smbclient \
                                   cifs-utils \
                                   fusesmb;

# Verifications
$(which samba) --version;
$(which smbclient) --version;

