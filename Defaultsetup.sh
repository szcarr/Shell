#!/bin/bash 

# wget https://raw.githubusercontent.com/szcarr/Shell/main/Defaultsetup.sh && chmod -x ./Defaultsetup.sh && ./Defaultsetup.sh

# Updating
sudo apt update
sudo apt upgrade

# Installing commands
sudo apt install ssh
sudo apt install sshfs
sudo apt install nmap

# Installing pip
sudo apt install python3-pip

# Installing vlc
sudo apt install vlc

# Installing VSC
mkdir ./setup_temp_default
cd ./setup_temp_default
wget https://code.visualstudio.com/sha/download?build=stable\&os=linux-deb-x64 # Noke feil her trur eg
file=$(ls)
sudo apt install $file.deb -y
cd ..
rm -rf ./setup_temp_default

