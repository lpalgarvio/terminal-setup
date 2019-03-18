#!/bin/bash

# Install software
sudo apt-get install -y default-jdk openjdk-8-jdk;

# Configure
sudo update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac;

# Verifications
$(which javac) -version;

