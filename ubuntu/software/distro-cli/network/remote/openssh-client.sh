#!/bin/bash

# Install software (client)
sudo apt-get install -y openssh-client \
                                   ssh-import-id;

# Verifications
$(which ssh) -V;

