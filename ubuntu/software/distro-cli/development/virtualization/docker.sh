#!/bin/bash

# Install software
sudo apt-get install -y docker.io \
                                   docker-containerd \
                                   docker-runc \
                                   docker-compose;

# Verifications
$(which docker) --version;

