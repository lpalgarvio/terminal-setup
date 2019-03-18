#!/bin/bash

# Install software
sudo apt-get install -y ecj ecj-gcj;

# Configure
sudo update-alternatives --set javac $(which ecj);

# Verifications
$(which javac) -version;

