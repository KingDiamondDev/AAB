#!/bin/bash

echo "Now we have to configure Jack so it doesn't run out of memory and creates errors."
echo "Configuring..."
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
echo "Done! Now let's proceed."
echo "Time to start building! Are you ready? Let's gooo!"
croot
brunch klte