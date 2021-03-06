#!/bin/bash
# https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest

# Retrieve distro information
os_distro=`lsb_release -si | tr '[:upper:]' '[:lower:]'`;
os_codename=`lsb_release -sc | tr '[:upper:]' '[:lower:]'`;

# Repositories and keys
#sudo apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893;
curl -L https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/azure-cli.list
# Azure CLI
deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ ${os_codename} main
EOF";
sudo apt-get update;

# Install software
sudo apt-get install -y azure-cli;

# Verifications
$(which az) --version;

