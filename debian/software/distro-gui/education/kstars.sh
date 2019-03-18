#!/bin/bash

# Install software
sudo apt-get install -y kstars;

# Verifications
$(which kstars) --version;

