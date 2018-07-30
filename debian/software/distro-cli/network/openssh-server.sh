#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software (server)
sudo apt-get install -y ssh \
                                   openssh-server openssh-sftp-server \
                                   openssh-blacklist openssh-blacklist-extra \
                                   ssh-import-id;

# Verifications
$(which ssh) -V;

