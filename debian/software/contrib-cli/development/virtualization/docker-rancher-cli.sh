#!/bin/bash
# https://rancher.com/docs/rancher/v1.6/en/

# Releases
app_release='v0.6.7';

# Install software
wget "https://github.com/rancher/cli/releases/download/${app_release}/rancher-linux-amd64-${app_release}.tar.gz" -P /tmp;
sudo rm -f /usr/local/bin/rancher;
sudo tar -xzf /tmp/rancher-linux-amd64-${app_release}.tar.gz --strip-components=2 -C /usr/local/bin;
sudo chmod +x /usr/local/bin/rancher;
rm -f /tmp/rancher-linux-amd64-${app_release}.tar.gz;

# Verifications
$(which rancher) --version;

