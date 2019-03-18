#!/bin/bash

# Install software
sudo apt-get install -y ktorrent;

# Verifications
$(which ktorrent) --version;

