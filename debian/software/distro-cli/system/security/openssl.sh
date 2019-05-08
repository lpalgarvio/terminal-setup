#!/bin/bash

# Install software
sudo apt-get install -y openssl \
                                   easy-rsa;

# Verifications
$(which openssl) version;

