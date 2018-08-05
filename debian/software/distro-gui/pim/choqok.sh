#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y choqok;

# Verifications
$(which choqok) --version;


