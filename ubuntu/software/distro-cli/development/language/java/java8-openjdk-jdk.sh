#!/bin/bash

# Install software
sudo apt-get install -y openjdk-8-jdk;

# Configure
sudo update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac;
sudo update-java-alternatives --set java-1.8.0-openjdk-amd64;

# Verifications
$(which javac) -version;

