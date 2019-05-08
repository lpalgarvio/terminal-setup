#!/bin/bash

# Install software
sudo apt-get install -y openjdk-11-jre;

# Configure
sudo update-alternatives --set java /usr/lib/jvm/java-11-openjdk-amd64/bin/java;

# Verifications
$(which java) -version;

