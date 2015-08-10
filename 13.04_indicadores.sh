#!/bin/bash

echo "
Script de instalação de indicadores legais para ubuntu!!!!
let's go...
"

# My Wheater Indicator, cpufreq, multiload
sudo add-apt-repository ppa:atareao/atareao -y
# Synape
sudo add-apt-repository ppa:elementary-os/daily -y
sudo add-apt-repository ppa:elementary-os/unstable-upstream -y
# Notifications
sudo add-apt-repository ppa:jconti/recent-notifications -y
# Keylock
sudo add-apt-repository ppa:tsbarnes/indicator-keylock -y 
#Sticky Notes
sudo add-apt-repository ppa:umang/indicator-stickynotes -y
#Zeitgeist
sudo add-apt-repository ppa:diesch/testing -y
# Caffeine
sudo add-apt-repository ppa:caffeine-developers/ppa -y
# Shutter 
sudo add-apt-repository ppa:shutter/ppa -y

# Update antes de instalar tudo
sudo apt-get update

echo "## Instalando my weather indicator "
sudo apt-get install my-weather-indicator -y
echo "## Instalando cpufreq indicator"
sudo apt-get install indicator-cpufreq -y
echo "## Instalando multiload"
sudo apt-get install indicator-multiload -y 
echo "## Instalando synapse"
sudo apt-get install indicator-synapse -y
echo "## Instalando notifications"
sudo apt-get install indicator-notifications -y
echo "## Instalando diodon"
sudo apt-get install diodon diodon-plugins -y
echo "## Instalando keylock"
sudo apt-get install indicator-keylock -y
echo "## Instalando touchpad indicator"
sudo apt-get install touchpad-indicator -y
echo "## Instalando Sticky Notes"
sudo apt-get install indicator-stickynotes -y
echo "## Instalando privacy indicator"
sudo apt-get install indicator-privacy -y
echo "## Instalando caffeine"
sudo apt-get install caffeine -y
echo "## Instalando shutter"
sudo apt-get install shutter -y

echo "## Instalando USB safe removal"
wget https://github.com/cas--/indicator-usb/releases/download/v0.2.2/indicator-usb-0.2.2.deb
dpkg -i indicator-usb-0.2.2.deb
rm indicator-usb-0.2.2.deb 

echo "## Instalando brightness control"
wget https://launchpad.net/~indicator-brightness/+archive/ppa/+files/indicator-brightness_0.4~bzr11~raring1_all.deb
sudo dpkg -i indicator-brightness_0.4~bzr11~raring1_all.deb 
sudo apt-get -f install -y

echo "## Acabou, agora vamos limpar a bagunça... "
sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoclean
sudo apt-get autoremove

echo "## Até mais..."
