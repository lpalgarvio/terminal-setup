#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y ant ant-gcj \
                                   ant-optional ant-optional-gcj;

# Verifications
$(which ant) -version;

