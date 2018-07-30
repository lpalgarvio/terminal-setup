#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y pwgen \
                                   gnupg gnupg-agent gnupg-curl \
                                   gnupg2 gpgsm gpgv;
#sudo apt-get install -y sshpass ssh-askpass keychain;

# Verifications
$(which pwgen) -h;
$(which gpg) --version;
$(which gpg2) --version;

