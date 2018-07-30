#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y transmission-qt;

# Verifications
$(which transmission-qt) --version;

