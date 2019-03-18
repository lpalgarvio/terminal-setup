#!/bin/bash
# http://support.brother.com/g/b/downloadtop.aspx?c=gb&lang=en&prod=mfcj430w_all
# https://support.brother.com/g/b/downloadlist.aspx?c=pt&lang=pt&prod=mfcj430w_all&os=128&flang=English

# Releases
app_release='2.2.1-1';

# Install software
wget https://download.brother.com/welcome/dlf006893/linux-brprinter-installer-${app_release}.gz -P /tmp/;
gzip -d /tmp/linux-brprinter-installer-${app_release}.gz;
chmod +x /tmp/linux-brprinter-installer-${app_release};
sudo /tmp/linux-brprinter-installer-${app_release} MFC-J430W;
rm -f /tmp/linux-brprinter-installer-${app_release}*;

# Configure
sudo brsaneconfig4 -a name=MFC-J430W model=MFC-J430W ip=192.168.1.205;
sudo usermod -aG lpadmin $USER;

