#!/bin/bash
# https://launchpad.net/~webupd8team/+archive/ubuntu/java

# Repositories and keys
sudo add-apt-repository ppa:webupd8team/java;
sudo apt-get update;

# Install software
sudo apt-get install -y oracle-java9-installer oracle-java9-set-default;

# Configure
sudo update-alternatives --set java /usr/lib/jvm/java-9-oracle/jre/bin/java;
sudo update-alternatives --set javac /usr/lib/jvm/java-9-oracle/bin/javac;

# Verifications
$(which java) -version;

