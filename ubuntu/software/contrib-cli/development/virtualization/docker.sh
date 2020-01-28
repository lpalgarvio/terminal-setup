#!/bin/bash
# https://stackoverflow.com/questions/34380315/bash-tries-to-execute-commands-in-heredoc
# https://docs.docker.com/install/linux/docker-ce/ubuntu/
# https://docs.docker.com/engine/reference/commandline/dockerd/
# https://docs.docker.com/storage/storagedriver/overlayfs-driver/
# https://docs.docker.com/v17.09/engine/userguide/networking/default_network/custom-docker0/

# Retrieve distro information
os_distro=`lsb_release -si | tr '[:upper:]' '[:lower:]'`;
os_codename=`lsb_release -sc | tr '[:upper:]' '[:lower:]'`;

# Set parameters
docker_config_storage_driver="overlay2";
docker_config_data_root="/srv/docker";
docker_config_ip="0.0.0.0";
docker_config_bip="172.17.0.1/16";
docker_config_fixed_cidr="172.17.0.0/16";
docker_config_mtu="1500";
docker_config_dns="\"1.1.1.1\", \"1.0.0.1\"";
docker_config_debug="false";

# Repositories and keys
curl -sL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/docker-ce.list
# Docker CE
deb [arch=amd64] https://download.docker.com/linux/${os_distro} ${os_codename} stable
EOF";
sudo apt-get update;

# Remove old software
sudo apt-get remove --purge -y docker docker-compose \
                               docker-engine docker.io \
                               docker-containerd docker-runc \
                               containerd runc;

# Install software
sudo apt-get install -y docker-ce docker-ce-cli containerd.io;

# Configuration
sudo systemctl stop docker containerd;
sudo ip link del docker0;
sudo groupadd docker;
sudo usermod -aG docker $USER;
sudo mkdir -p /etc/docker;
cat <<EOF > daemon.json
{
  "storage-driver": "${docker_config_storage_driver}",
  "data-root": "${docker_config_data_root}",
  "icc": true,
  "iptables": true,
  "ip-forward": true,
  "ip-masq": true,
  "ipv6": false,
  "ip": "${docker_config_ip}",
  "bip": "${docker_config_bip}",
  "fixed-cidr": "${docker_config_fixed_cidr}",
  "mtu": $docker_config_mtu,
  "dns": [${docker_config_dns}],
  "debug": ${docker_config_debug}
}
EOF
sudo bash -c "cat daemon.json > /etc/docker/daemon.json"; rm daemon.json; cat /etc/docker/daemon.json;
if [ -d /srv/docker ]; then
  sudo mv /srv/docker /srv/docker.old;
fi;
sudo mkdir -p /srv/docker;
if [ -d /var/lib/docker ]; then
  sudo mv /var/lib/docker/* /srv/docker/;
  sudo rm -Rf /var/lib/docker;
elif [ -L /var/lib/docker ]; then
  sudo rm -f /var/lib/docker;
fi;
sudo ln -s /srv/docker /var/lib/docker;
sudo systemctl start containerd docker;
sudo systemctl enable containerd docker;

# Verifications
$(which docker) --version;

# Get additional info
sudo $(which docker) version;
sudo $(which docker) info;
sudo $(which docker) network inspect bridge;

