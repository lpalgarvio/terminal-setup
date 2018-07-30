#!/bin/bash
# https://docs.acquia.com/acquia-cloud/develop/pipelines/cli/install/

# Install software
sudo curl -L "https://cloud.acquia.com/pipeline-client/download" -o /usr/local/bin/pipelines;
sudo chmod +x /usr/local/bin/pipelines;

# Verifications
$(which pipelines) --version;

