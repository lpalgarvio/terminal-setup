#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software (client and server)
sudo apt-get install -y system-config-samba \
                                   smb4k;

# Verifications
#$(which system-config-samba) --version;
$(which smb4k) --version;

