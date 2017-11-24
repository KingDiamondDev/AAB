#!/bin/bash

echo "Now we start building for the S5 (klte)!"
source build/envsetup.sh
echo "WARNING: I am now downloading the specific configuration for your device (klte). This will take 5 minutes."
breakfast klte
echo "If you have an S5 running LineageOS already, connect it to your computer now. Once connected, refer to the next shell script titled extract-files.sh. YOU MUST HAVE ROOT ACCESS FOR ADB AND USB DEBUGGING ON."
echo "If you do not have an S5, don't worry. I've got you covered. Start the script titled noS5.sh by dragging it to the terminal and tapping enter."
