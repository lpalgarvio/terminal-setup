#!/bin/bash

# Install software
sudo apt-get install -y handbrake-cli;

# Verifications
$(which HandBrakeCLI) --version;

