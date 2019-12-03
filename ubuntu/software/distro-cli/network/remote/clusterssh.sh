#!/bin/bash

# Install software
sudo apt-get install -y clusterssh;

# Verifications
$(which clusterssh) --version;

