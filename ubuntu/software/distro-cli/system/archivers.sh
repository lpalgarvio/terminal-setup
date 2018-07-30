#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y cpio bsdcpio \
                                   tar bsdtar \
                                   gzip \
                                   bzip2 \
                                   xz-utils \
                                   zip unzip \
                                   rar unrar \
                                   par2 \
                                   pax \
                                   p7zip-full p7zip-rar;

# Verifications
$(which cpio) --version;
$(which tar) --version;
$(which gzip) --version;
$(which bzip2) --version;
$(which xz) --version;
$(which zip) --version;
#$(which rar) --version;
$(which par2) -V;
#$(which pax) --version;
$(which p7zip) --version;

