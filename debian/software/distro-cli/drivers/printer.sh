#!/bin/bash

# Install software
sudo apt-get install -y cups \
                                   cups-browsed cups-bsd \
                                   cups-client cups-daemon \
                                   foomatic-db-engine foomatic-db-gutenprint \
                                   openprinting-ppds \
                                   printer-driver-all printer-driver-cups-pdf \
                                   system-config-printer-udev;

