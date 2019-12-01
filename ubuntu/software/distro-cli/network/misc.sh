#!/bin/bash
# https://unix.stackexchange.com/questions/400351/what-are-the-differences-between-iputils-ping-and-inetutils-ping
# https://blog.remibergsma.com/tag/arping/
# https://askubuntu.com/questions/1017286/what-is-the-difference-between-traceroute-from-traceroute-and-inetutils-tracerou

# Install software
sudo apt-get install -y whois \
                                   iputils-arping \
                                   iputils-ping fping \
                                   iputils-tracepath traceroute \
                                   telnet \
                                   ftp \
                                   wget curl;

# Configuration
#sudo update-alternatives --set ping $(which ping);
#sudo update-alternatives --set traceroute $(which traceroute);

# Verifications
$(which whois) --version;
$(which arping) -V;
$(which ping) -V;
#$(which tracepath) -V;
$(which traceroute) --version;
#$(which telnet) --version;
#$(which ftp) --version;
$(which wget) --version;
$(which curl) --version;

