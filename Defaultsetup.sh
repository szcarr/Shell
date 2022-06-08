#!/bin/bash 

# wget https://raw.githubusercontent.com/szcarr/Shell/main/Defaultsetup.sh

sudo apt update
sudo apt upgrade

sudo apt install ssh
sudo apt install sshfs
sudo apt install nmap

sudo apt install python3-pip

sudo apt install vlc

mkdir ./setup_temp_default
cd ./setup_temp_default
wget https://code.visualstudio.com/sha/download\?build=stable\&os=linux-deb-x64
file=$(ls)
sudo apt install $file.deb
cd ..
rm -rf ./setup_temp_default

