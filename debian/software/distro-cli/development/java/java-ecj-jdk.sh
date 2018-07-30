#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y ecj ecj-gcj;

# Configure
sudo update-alternatives --set javac $(which ecj);

# Verifications
$(which javac) -version;

