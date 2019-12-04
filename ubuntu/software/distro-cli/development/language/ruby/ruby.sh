#!/bin/bash

# Install software
sudo apt-get install -y ruby ruby-dev rubygems-integration;

# Verifications
$(which ruby) --version;
$(which gem) --version;
$(which gem) list;

