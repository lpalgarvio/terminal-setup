#!/bin/bash

# Install software
sudo apt-get install -y ibm-java80-jre ibm-java80-jdk;

# Configure
sudo update-alternatives --set java $(which ibm-java80-jre);

# Verifications
$(which java) -version;

