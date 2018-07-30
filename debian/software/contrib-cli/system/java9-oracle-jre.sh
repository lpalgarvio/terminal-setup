#!/bin/bash
# http://www.webupd8.org/2014/03/how-to-install-oracle-java-8-in-debian.html

# Repositories and keys
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886;
sudo bash -c 'cat <<EOF > /etc/apt/sources.list.d/webupd8team-java.list
# Longview
deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main
deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main
EOF'
sudo apt-get update;

# Install software
sudo apt-get install -y oracle-java9-installer oracle-java9-set-default;

# Configure
sudo update-alternatives --set java /usr/lib/jvm/java-9-oracle/jre/bin/java;
sudo update-alternatives --set javac /usr/lib/jvm/java-9-oracle/bin/javac;

# Verifications
$(which java) -version;

