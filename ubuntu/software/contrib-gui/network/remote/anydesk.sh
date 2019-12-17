#!/bin/bash
# http://deb.anydesk.com/howto.html

# Repositories and keys
wget -q https://keys.anydesk.com/repos/DEB-GPG-KEY -O- | sudo apt-key add -;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/anydesk-stable.list
# AnyDesk
deb http://deb.anydesk.com/ all main
EOF";
sudo apt-get update;

# Install software
sudo apt-get install -y anydesk;

# Verifications
$(which anydesk) --version;

