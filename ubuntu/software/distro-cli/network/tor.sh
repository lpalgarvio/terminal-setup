#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software (client)
sudo apt-get install -y tor tor-arm tor-geoipdb;

# Verifications
$(which tor) --version;

