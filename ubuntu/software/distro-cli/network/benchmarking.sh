#!/bin/bash

# Install software
sudo apt-get install -y iperf3 \
                                   apache2-utils siege;

$(which iperf3) -v;
$(which ab) -V;
$(which siege) -V;

