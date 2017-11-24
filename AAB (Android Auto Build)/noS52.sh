#!/bin/bash

echo "So, are you done? Ok. Let's start. We need to extract some files and create a temporary folder to do this. So, let's do this!"
mkdir ~/android/system_dump/
cd ~/android/system_dump/
unzip ~/Downloads/lineage-14.1-20171116-nightly-klte-signed.zip system.transfer.list system.new.dat
echo "So, I have finished the extracting, now I have to get a copy of sdat2img. This script can convert the content of the extracted zip into dumps that can be mounted"
git clone https://github.com/xpirt/sdat2img
echo "All right. I've got it. Now to convert the extracted files into a mountable disk."
python sdat2img/sdat2img.py system.transfer.list system.new.dat system.img
echo "You now have a file called system.img which I am going to mount, but I need your password (user) to do this. It won't harm your computer, I promise."
mkdir system/
sudo mount system.img system/
echo "All right, so I mounted the image. Now we need to extract files from the mounted disk. You have to move to ~/android/lineage/device/samsung/klte, and I'll do that right now."
cd ~/android/lineage/device/samsung/klte
echo"All right. I'm here, so let's get to extracting!"
./extract-files.sh ~/android/system_dump/
echo "This will tell extract-files.sh to get the files from the mounted system dump rather than from a connected device. Once I’ve extracted all the proprietary files, unmount the system dump and delete the no longer needed files, which I will do now."
sudo umount ~/android/system_dump/system
rm -rf ~/android/system_dump/
echo "So now, you can start building the ROM without issues (I hope)!"
