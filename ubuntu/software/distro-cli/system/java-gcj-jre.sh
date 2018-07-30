#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y gcj-jre;

# Configure
sudo update-alternatives --set jdk $(which gij-5);

# Verifications
$(which java) -version;

