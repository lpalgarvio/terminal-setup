#!/bin/bash

# Install software
sudo apt-get install -y ruby ruby-dev rubygems-integration;
sudo apt-get install -y ruby2.5 ruby2.5-dev;

# Configuration
#sudo update-alternatives --set ruby $(which ruby2.5);

# Verifications
$(which ruby) --version;
$(which ruby2.5) --version;
$(which gem) --version;
$(which gem) list;

