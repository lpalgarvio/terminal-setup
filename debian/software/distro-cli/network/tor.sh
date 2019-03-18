#!/bin/bash

# Install software (client)
sudo apt-get install -y tor tor-arm tor-geoipdb;

# Verifications
$(which tor) --version;

