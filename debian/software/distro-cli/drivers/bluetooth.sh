#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y bluetooth \
                                   bluez-btsco \
                                   bluez-cups \
                                   bluez-tools;

