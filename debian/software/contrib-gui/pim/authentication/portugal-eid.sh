#!/bin/bash
# https://www.autenticacao.gov.pt/cc-autenticacao
# https://www.autenticacao.gov.pt/cc-aplicacao

# Releases
app_release='Ubuntu_18';

# Install dependencies
sudo apt-get install -y qtbase-abi-5-9-5 libnsspem libcurl3-nss libxml-security-c17v5 pcscd pcsc-tools libccid openjdk-8-jre;

# Install software (plugin)
wget https://autenticacao.gov.pt/fa/ajuda/software/plugin-autenticacao-gov.deb -P /tmp/ -O /tmp/plugin-autenticacao-gov.deb;
sudo dpkg -i /tmp/plugin-autenticacao-gov.deb;
rm -f /tmp/plugin-autenticacao-gov.deb;

# Install software (client)
wget https://www.autenticacao.gov.pt/documents/10179/11962/Autenticacao.gov_${app_release}_x64.deb -P /tmp/ -O /tmp/Autenticacao.gov_${app_release}_x64.deb;
sudo dpkg -i /tmp/Autenticacao.gov_${app_release}_x64.deb;
rm -f /tmp/Autenticacao.gov_${app_release}_x64.deb;

