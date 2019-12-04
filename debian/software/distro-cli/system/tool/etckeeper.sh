#!/bin/bash

# Install software
sudo apt-get install -y etckeeper;

# Verifications
$(which etckeeper) --version;

