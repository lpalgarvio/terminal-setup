#!/bin/bash

# Install software
sudo apt-get install -y virtualbox virtualbox-dkms \
                                   virtualbox-ext-pack virtualbox-guest-additions-iso;

# Configuration
sudo usermod -aG vboxusers $USER;

