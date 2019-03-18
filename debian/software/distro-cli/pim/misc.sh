#!/bin/bash

# Install software
sudo apt-get install -y pwgen \
                                   gnupg gnupg-agent \
                                   gnupg2 gpgsm gpgv;
#sudo apt-get install -y sshpass ssh-askpass keychain;

# Verifications
$(which pwgen) --help;
$(which gpg) --version;
$(which gpg2) --version;

