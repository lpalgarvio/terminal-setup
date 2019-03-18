#!/bin/bash

# Install software
sudo apt-get install -y mdadm;

# Verifications
$(which mdadm) --version;

