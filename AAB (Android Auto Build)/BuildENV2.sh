#!/bin/bash

echo "So, you've downloaded the file right? All right, let's continue. Let me unzip it for you."

unzip ~/Downloads/platform-tools-latest-linux.zip -d ~

echo "Now I have to set the profile variable, but you have to copy and paste the code yourself. Open scripts.txt and copy the variable from where it says BuildENV2.sh. I will ask for your password in order to do this. Once the editor has opened, copy and paste it in the editor."

sudo nano ~/.profile

echo "Once we are done, start BuildENV3.sh to continue."
