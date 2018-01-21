!#/bin/bash
#Blkzer0

read -p " What is the directory path you want to download?:" url
wget -r -np -nH $url
