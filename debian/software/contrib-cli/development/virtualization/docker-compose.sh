#!/bin/bash
# https://docs.docker.com/compose/install/

# Releases
app_release='1.25.3';

# Remove software
sudo apt-get remove --purge -y docker-compose;

# Install software
sudo curl -L "https://github.com/docker/compose/releases/download/${app_release}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose;
sudo chmod +x /usr/local/bin/docker-compose;

# Verifications
$(which docker-compose) --version;

