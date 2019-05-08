#!/bin/bash

# Install software (client)
sudo apt-get install -y openssh-client \
                                   ssh-import-id \
                                   sshfs \
                                   clusterssh mussh;

# Verifications
$(which ssh) -V;
$(which clusterssh) --version;

