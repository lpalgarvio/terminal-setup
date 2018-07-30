#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y openjdk-9-jdk;

# Configure
sudo update-alternatives --set javac /usr/lib/jvm/java-9-openjdk-amd64/bin/javac;

# Verifications
$(which javac) -version;

