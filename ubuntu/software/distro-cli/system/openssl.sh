#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y openssl \
                                   openssl-blacklist \
                                   openssl-blacklist-extra \
                                   easy-rsa;

# Verifications
$(which openssl) version;

