#!/bin/bash

##script for checking if a dependency script is present in order for the main one to run.
##installs a missing package or dependency if it is not installed.
##May require sudo in order to use apt-get to install package, works better in scripts that require sudo. 
      
   echo "checking if something is installed"  


      which #package-name
      if [ -d $find ]; then
      echo [✔]::[ package-name ]: installation found!;
else

   echo [x]::[warning]:this script requires #package-name/dependency ;
   echo ""
   echo [!]::[please wait]: please install .... ;
   apt-get update
   apt-get install #package-name
   echo ""
   sleep 2
   exit
fi
