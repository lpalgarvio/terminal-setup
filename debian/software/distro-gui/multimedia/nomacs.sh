#!/bin/bash

# Install software
sudo apt-get install -y nomacs;

# Verifications
$(which nomacs) --version;

