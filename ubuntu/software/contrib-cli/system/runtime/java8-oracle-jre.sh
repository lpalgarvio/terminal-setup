#!/bin/bash
# https://launchpad.net/~webupd8team/+archive/ubuntu/java

# Repositories and keys
sudo add-apt-repository ppa:webupd8team/java;
sudo apt-get update;

# Install software
sudo apt-get install -y oracle-java8-installer oracle-java8-set-default;

# Configure
sudo update-alternatives --set java /usr/lib/jvm/java-8-oracle/jre/bin/java;
sudo update-alternatives --set javac /usr/lib/jvm/java-8-oracle/bin/javac;

# Verifications
$(which java) -version;

