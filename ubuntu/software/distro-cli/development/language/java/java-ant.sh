#!/bin/bash

# Install software
sudo apt-get install -y ant ant-gcj \
                                   ant-optional ant-optional-gcj;

# Verifications
$(which ant) -version;

