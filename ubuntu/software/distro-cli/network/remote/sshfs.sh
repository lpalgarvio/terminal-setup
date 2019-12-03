#!/bin/bash

# Install software
sudo apt-get install -y sshfs;

# Verifications
$(which sshfs) -V;

