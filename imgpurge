#!/bin/bash

#Removes old linux images that get stored in /boot and take up alot of space, therefore preventing upgrades from installaing.

echo " Checking current linux images"
dpkg -l linux-image-\* | grep ^ii
read -p " Which one to remove?:" $image
sudo apt-get purge $image
echo " Checking updated linux images"
exit
