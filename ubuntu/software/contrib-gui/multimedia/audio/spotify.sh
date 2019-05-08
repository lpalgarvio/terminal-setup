#!/bin/bash

# Repositories and keys
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/spotify.list
# Spotify
deb http://repository.spotify.com stable non-free
EOF";
sudo apt-get update;

# Install software (client)
sudo apt-get install -y spotify-client;

