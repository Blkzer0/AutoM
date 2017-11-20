#!/bin/bash

# Script written to change the Mac address on the network, starts up anonsurf tor tunnel and lastly checks if your DNS is encrypted via dnscrypt.
# Packages required: Anonsurf (works for parrotsec and arch), dnscrypt-1.9.1(latest package is broken,so use this version)  

if [[ $EUID -ne 0 ]]; then
	echo "ERROR! Run this script with root user!"
	exit 1
fi

echo " Codename: Hidm3"
echo " Scripted to Encrypt Network Tunnel"
echo " Written by: Blkzer0"

anon(){ 
	echo "Recalibrating Network Tunnel"
	sleep 2  
	anonsurf start
	anonsurf myip 
}

    ifconfig wlan0 down
    sleep 2
    macchanger -r wlan0
    sleep 1
    ifconfig wlan0 up
    read -p " Are you connected to the internet?" reply  
   
if [ "$reply" == "n" ]
then
    exit 0
elif [ "$reply" == "y" ]
then 
    anon
    
echo "Checking DNS Encryption"
sleep 1
bash dnscrypt-loader -x
sleep 3
echo "Checking if Network has been Tunneled Successfully"
sleep 3
ping -c 3 duckduckgo.com
firefox https://dnsleaktest.com
fi  
