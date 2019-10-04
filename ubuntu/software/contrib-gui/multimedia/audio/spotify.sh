#!/bin/bash

# Repositories and keys
sudo curl -sL https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/spotify.list
# Spotify
deb http://repository.spotify.com stable non-free
EOF";
sudo apt-get update;

# Install software (client)
sudo apt-get install -y spotify-client;

