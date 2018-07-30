#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y gcj-jdk;

# Configure
sudo update-alternatives --set javac $(which gcj-wrapper-5);

# Verifications
$(which javac) -version;

