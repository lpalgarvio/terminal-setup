#!/bin/bash
# https://jitsi.org/downloads/

# Repositories and keys
curl -sL https://download.jitsi.org/jitsi-key.gpg.key | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/jitsi-client.list
# Jitsi Client
deb [arch=amd64] https://download.jitsi.org stable/
EOF";
sudo apt-get update;

# Install software (client)
sudo apt-get install -y jitsi-meet;

