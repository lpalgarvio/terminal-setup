#!/bin/bash

# Install software
sudo apt-get install -y httrack;

# Verifications
$(which httrack) --version;

