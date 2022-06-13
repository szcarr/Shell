#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install openjdk-17-jre-headless -y


FOLDERNAME="Skyblockserver"
rm -rf $FOLDERNAME
mkdir $FOLDERNAME
cd $FOLDERNAME

#sudo apt install openjdk-11-jre -y

wget https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar .
mv server.jar minecraft_server_1.18.2.jar
java -Xmx1024M -Xms1024M -jar minecraft_server_1.18.2.jar nogui
rm -rf eula.txt
touch eula.txt
echo "eula=true" > eula.txt

# wget https://www.planetminecraft.com/project/skyblock-2020-1-15-1/download/worldmap/ error 403 must download manually
# dont change location just download to download directory (/home/username/Downloads)
cp ../Downloads/Skyblock 4.10.zip ~/Skyblockserver/
unzip Skyblock 4.10.zip
mv skyblock-2021 skyblock

sed '10 c\level-name=skyblock' server.properties > temp_file.txt
cat temp_file.txt > server.properties
rm -rf temp_file.txt

java -Xmx1024M -Xms1024M -jar minecraft_server_1.18.2.jar nogui