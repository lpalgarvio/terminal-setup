#!/bin/bash

# Install software
sudo apt-get install -y openjdk-11-jdk;

# Configure
sudo update-alternatives --set javac /usr/lib/jvm/java-11-openjdk-amd64/bin/javac;

# Verifications
$(which javac) -version;

