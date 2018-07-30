#!/bin/bash
# https://mariadb.com/kb/en/library/mariadb-package-repository-setup-and-usage/

# Releases
app_release='10.3';

# Repositories and keys
curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | sudo bash -s -- --mariadb-server-version=mariadb-${app_release};

# Install software (server)
sudo apt-get install -y mariadb-server;

# Configuration
sudo systemctl enable mariadb;

# Verifications
$(which mysqld) --version;

