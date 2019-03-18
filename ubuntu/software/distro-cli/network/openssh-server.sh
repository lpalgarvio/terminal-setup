#!/bin/bash

# Install software (server)
sudo apt-get install -y ssh \
                                   openssh-server openssh-sftp-server \
                                   ssh-import-id;

# Verifications
$(which ssh) -V;

