#!/bin/bash
# https://guides.github.com/features/mastering-markdown/
# https://github.com/gollum/gollum/wiki/Installation

# Install dependencies
sudo apt-get install -y zlib1g-dev libicu-dev build-essential cmake make;

# Install software
sudo gem install gollum github-markdown;

# Verifications
$(which gollum) --version;

