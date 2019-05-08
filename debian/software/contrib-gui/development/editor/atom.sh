#!/bin/bash
# https://flight-manual.atom.io/getting-started/sections/installing-atom/#platform-linux

# Repositories and keys
wget -O- https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/atom.list
# Atom
deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main
EOF";
sudo apt-get update;

# Install software
sudo apt-get install -y atom;

# Verifications
$(which atom) --version;

