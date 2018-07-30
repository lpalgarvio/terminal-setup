#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y digikam kdegraphics-thumbnailers kipi-plugins \
                                    skanlite ksaneplugin xsane \
                                    transmageddon;

# Remove software
sudo apt-get remove --purge -y kdegraphics-mobipocket kimagemapeditor;

# Verifications
$(which digikam) --version;
$(which skanlite) --version;
$(which xsane) --version;
$(which transmageddon) --version;

