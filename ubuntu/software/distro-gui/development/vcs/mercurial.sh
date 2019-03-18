#!/bin/bash

# Install software
sudo apt-get install -y hgview tortoisehg;

# Verifications
$(which hgview) version;
$(which tortoisehg) version;

