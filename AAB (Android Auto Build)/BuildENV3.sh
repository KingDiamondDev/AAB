#!/bin/bash

echo "Now I need to update the environment to include the new variable. I'll do that now."
source ~/.profile
echo "In order to build, I need to install 30 packages. These are essential to the build process. Let's start them now. It also needs your password."
sudo apt-get install bc bison build-essential curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev libesd0-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev -y
echo "So now we have that out of the way, I need to install Java Dev Kit. Give me a second to install..."
sudo apt-get install openjdk-8-jdk
echo "Now that that is done, start BuildENV4.sh to continue."
