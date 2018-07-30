#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software (client)
sudo apt-get install -y openssh-client \
                                   openssh-blacklist openssh-blacklist-extra \
                                   ssh-import-id \
                                   sshfs \
                                   clusterssh mussh;

# Verifications
$(which ssh) -V;
$(which clusterssh) --version;

