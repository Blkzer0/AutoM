#!/bin/bash

read -p "Password to find:" pass
cat /path/to/wordlist/file.txt | grep -w $pass

if [[ $? != 0 ]]; then
    echo "Password not found!"
fi

# Created to search thru the rocktastic wordlist (4Bil words) for possible matchs.
