#!/bin/bash

nmcli networking off
sleep 2
nmcli networking on
sleep 2
#sudo service network-manager restart

#reload the kernel module:
#sudo rmmod iwlwifi
#sudo modprobe iwlwifi

echo "Network should be back up"

##For whatever reason your network may go down due to certain tests you may have performed or certain scripts can cause your network-manager to go down, this script will bring it back up. Just those first two lines will fix the problem, if not you can restart the network manager and if you are having complicated problems, uncomment the last lines to reload the kernel module. Be sure to add to /usr/local/bin for ease.
