#!/bin/bash 
#unlocks files.
read -p "Provide path to file to unlock:" path
sudo chown username $path
echo " File Unlocked"
