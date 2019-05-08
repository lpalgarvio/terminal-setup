#!/bin/bash
# https://keepass.info/download.html
# https://launchpad.net/~jtaylor/+archive/ubuntu/keepass
# https://github.com/dlech/Keebuntu

# Repositories and keys
sudo add-apt-repository ppa:jtaylor/keepass;
sudo add-apt-repository ppa:dlech/keepass2-plugins;
sudo apt-add-repository ppa:dlech/keepass2-plugins-beta;
sudo apt-get update;

# Install dependencies
sudo apt-get install -y mono-complete libmono-system-configuration-install4.0-cil libmono-system-management4.0-cil libmono-csharp4.0c-cil libmono-microsoft-csharp4.0-cil mono-dmcs mono-mcs;

# Install software
sudo apt-get install -y keepass2;

# Prepare for contributed plugins...
sudo mkdir -p /opt/Keepass2/plugins-contrib;
sudo rm -f /usr/lib/keepass2/plugins/plugins-contrib;
sudo ln -s /opt/Keepass2/plugins-contrib /usr/lib/keepass2/plugins/plugins-contrib;

# Install plugins

# KDE support
sudo apt-get install -y keepass2-plugin-status-notifier;

# KeePassHTTP
sudo apt-get install -y keepass2-plugin-keepasshttp;

# KeePassRPC
sudo apt-get install -y keepass2-plugin-rpc;
wget https://github.com/kee-org/keepassrpc/releases/download/v1.7.3.1/KeePassRPC.plgx -P /tmp/;
sudo mv /tmp/KeePassRPC.plgx /opt/Keepass2/plugins-contrib/KeePassRPC.plgx;

# KeeAgent
sudo apt-get install -y keepass2-plugin-keeagent;

# Mozilla binding
#sudo apt-get install -y xul-ext-keefox xul-ext-keebird;

# KeeOTP
wget https://bitbucket.org/devinmartin/keeotp/downloads/KeeOtp-1.3.9.zip -P /tmp/;
sudo mkdir /opt/Keepass2/plugins-contrib/KeeOtp;
sudo unzip -q /tmp/KeeOtp-1.3.9.zip -d /opt/Keepass2/plugins-contrib/KeeOtp/;
rm -f /tmp/KeeOtp-1.3.9.zip;

# KeeCloud
wget https://bitbucket.org/devinmartin/keecloud/downloads/KeeCloud-1.2.0.3.plgx -P /tmp/;
sudo mv /tmp/KeeCloud-1.2.0.3.plgx /opt/Keepass2/plugins-contrib/KeeCloud.plgx;

# QualityColumn
wget http://keepass.info/extensions/v2/qualitycolumn/QualityColumn-1.2.zip -P /tmp/;
sudo unzip -q /tmp/QualityColumn-1.2.zip -d /tmp/;
sudo mv /tmp/QualityColumn.plgx /opt/Keepass2/plugins-contrib/QualityColumn.plgx;
rm -f /tmp/QualityColumn-1.2.zip;

# Password Counter
wget https://netcologne.dl.sourceforge.net/project/keepasspasswordcounter/v0.1/KPPasswordCounter.plgx -P /tmp/;
sudo mv /tmp/KPPasswordCounter.plgx /opt/Keepass2/plugins-contrib/KPPasswordCounter.plgx;

# Database Backup
wget http://keepass.info/extensions/v2/databasebackup/DataBaseBackup-2.0.8.6.zip -P /tmp/;
sudo unzip -q /tmp/DataBaseBackup-2.0.8.6.zip -d /opt/Keepass2/plugins-contrib/;
rm -f /tmp/DataBaseBackup-2.0.8.6.zip;

# Reset ownership
sudo chown -R $USER:$USER /opt/Keepass2;

