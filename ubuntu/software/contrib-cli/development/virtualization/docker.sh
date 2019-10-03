#!/bin/bash
# https://docs.docker.com/install/linux/docker-ce/ubuntu/

# Retrieve distro information
os_distro=`lsb_release -si | tr '[:upper:]' '[:lower:]'`;
os_codename=`lsb_release -sc | tr '[:upper:]' '[:lower:]'`;

# Repositories and keys
curl -sL https://download.docker.com/linux/debian/gpg | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/docker.list
# Docker
deb [arch=amd64] https://download.docker.com/linux/${os_distro} ${os_codename} stable
EOF";
sudo apt-get update;

# Install dependencies
sudo apt-get install -y linux-image-extra-virtual;

# Remove old software
sudo apt-get remove -y docker docker-engine docker.io containerd runc;

# Install software
sudo apt-get install -y docker-ce \
                                   docker-compose;

# Configuration
sudo service docker start;
sudo service docker stop;
sudo systemctl enable docker;
sudo groupadd docker;
sudo usermod -aG docker $USER;
sudo bash -c 'cat <<EOF > /etc/default/docker
# Docker Upstart and SysVinit configuration file

#
# THIS FILE DOES NOT APPLY TO SYSTEMD
#
#   Please see the documentation for "systemd drop-ins":
#   https://docs.docker.com/engine/admin/systemd/
#

# Customize location of Docker binary (especially for development testing).
#DOCKERD="/usr/local/bin/dockerd"

# Use DOCKER_OPTS to modify the daemon startup options.
#DOCKER_OPTS="--dns 8.8.8.8 --dns 8.8.4.4"
DOCKER_OPTS=""
DOCKER_OPTS="\${DOCKER_OPTS} --dns 8.8.8.8 --dns 8.8.4.4"
DOCKER_OPTS="\${DOCKER_OPTS} --bip=172.17.0.1/16 --fixed-cidr=172.17.0.0/16"
DOCKER_OPTS="\${DOCKER_OPTS} -s overlay"

# If you need Docker to use an HTTP proxy, it can also be specified here.
#export http_proxy="http://127.0.0.1:3128/"

# This is also a handy place to tweak where Dockers temporary files go.
#export DOCKER_TMPDIR="/mnt/bigdrive/docker-tmp"
EOF';
if [ -d /srv/docker ]; then
  sudo mv /srv/docker /srv/docker.old;
fi
sudo mkdir -p /srv/docker;
if [ -d /etc/docker ]; then
  sudo mv /etc/docker/* /srv/docker/;
  sudo rm -Rf /etc/docker;
elif [ -L /etc/docker ]; then
  sudo rm -f /etc/docker;
fi
sudo ln -s /srv/docker /etc/docker;
if [ -d /var/lib/docker ]; then
  sudo mv /var/lib/docker/* /srv/docker/;
  sudo rm -Rf /var/lib/docker;
elif [ -L /var/lib/docker ]; then
  sudo rm -f /var/lib/docker;
fi
sudo ln -s /srv/docker /var/lib/docker;
sudo service docker start;

# Verifications
$(which docker) --version;

