#!/bin/bash
# https://www.autenticacao.gov.pt/cc-software

# Releases
app_release='ubuntu18';

# Install dependencies
sudo apt-get install -y libxml-security-c20 pcscd pcsc-tools libccid;

# Install software (broken for ubuntu 18.10)
#wget https://svn.gov.pt/projects/ccidadao/repository/middleware-offline/tags/builds/lastversion/pteid-mw_${app_release}_amd64.deb -P /tmp/ -O /tmp/pteid-mw_${app_release}_amd64.deb;
#sudo dpkg -i /tmp/pteid-mw_${app_release}_amd64.deb;
#rm -f /tmp/pteid-mw_${app_release}_amd64.deb;

# Install software (plugin)
wget https://autenticacao.gov.pt/fa/ajuda/software/plugin-autenticacao-gov.deb -P /tmp/ -O /tmp/plugin-autenticacao-gov.deb;
sudo dpkg -i /tmp/plugin-autenticacao-gov.deb;
rm -f /tmp/plugin-autenticacao-gov.deb;

