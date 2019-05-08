#!/bin/bash

# Install software
sudo apt-get install -y lvm2;

# Verifications
$(which lvm) version;

