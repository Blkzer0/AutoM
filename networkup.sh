#!/bin/bash

##This script consists of three ways of resetting your network manager. 
#Uncomment the one the works best for you and add it to /usr/local/bin for ease of use.
##The current uncommented option works best.

nmcli networking off
sleep 2
nmcli networking on
sleep 2

#sudo service network-manager restart

#reload the kernel module:
#sudo rmmod iwlwifi
#sudo modprobe iwlwifi
echo "Network should be back up"
