#!/bin/bash

# Install software
sudo apt-get install -y wakeonlan etherwake;

# Verifications
$(which wakeonlan) -v;
$(which etherwake) -V;

