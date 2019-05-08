#!/bin/bash
# https://puppet.com/docs/puppet/5.3/install_linux.html

# Retrieve distro information
os_distro=`lsb_release -si | tr '[:upper:]' '[:lower:]'`;
os_codename=`lsb_release -sc | tr '[:upper:]' '[:lower:]'`;

# Repositories and keys
sudo apt-key adv --keyserver pgp.mit.edu --recv-key 7F438280EF8D349F;
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-${os_codename}.deb -P /tmp/;
sudo dpkg -i /tmp/puppetlabs-release-pc1-${os_codename}.deb;
rm -f /tmp/puppetlabs-release-pc1-${os_codename}.deb;
sudo apt-get update;

# Install software (client)
sudo apt-get install -y puppet-agent;

# Configuration
sudo service puppet start;
sudo service puppet stop;
sudo systemctl enable puppet;
sudo groupadd puppet;
sudo usermod -aG puppet $USER;
sudo bash -c 'cat <<EOF > /etc/default/puppet
# You may specify parameters to the puppet client here
#PUPPET_EXTRA_OPTS=--waitforcert=500

EOF';
if [ -d /srv/puppetlabs ]; then
  sudo mv /srv/puppetlabs /srv/puppetlabs.old;
fi
sudo mkdir -p /srv/puppetlabs;
if [ -L /etc/puppetlabs ]; then
  sudo rm -f /etc/puppetlabs;
else
  sudo mv /etc/puppetlabs/* /srv/puppetlabs/;
  sudo rmdir /etc/puppetlabs;
fi
sudo ln -s /srv/puppetlabs /etc/puppetlabs;
sudo service puppet start;

