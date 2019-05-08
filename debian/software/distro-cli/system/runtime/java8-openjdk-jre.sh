#!/bin/bash

# Install software
sudo apt-get install -y default-jre openjdk-8-jre;

# Configure
sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java;

# Verifications
$(which java) -version;

