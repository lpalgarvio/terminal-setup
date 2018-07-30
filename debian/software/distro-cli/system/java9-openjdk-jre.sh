#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y openjdk-9-jre;

# Configure
sudo update-alternatives --set java /usr/lib/jvm/java-9-openjdk-amd64/jre/bin/java;

# Verifications
$(which java) -version;

