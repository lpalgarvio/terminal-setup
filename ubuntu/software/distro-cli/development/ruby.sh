#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y ruby ruby-dev rubygems-integration;
sudo apt-get install -y ruby2.3 ruby2.3-dev;

# Configuration
sudo update-alternatives --set ruby $(which ruby2.3);

# Verifications
$(which ruby) --version;
$(which gem) --version;
$(which gem) list;

