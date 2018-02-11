#!/bin/bash
#script is made for organizing proxy from format: 'ip:port' to 'http ip port' for proxychains.

echo "Path to proxylist:"
read path
echo "Organizing Proxy List...."
sed 's/^/http /; s/:/ /g' $path 
sleep 2
echo "Complete"
