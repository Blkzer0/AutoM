#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

file=/pathtofile/

ip_address=`cat "${file}" | grep "<address addr" | cut -d " " -f2 | cut -d "=" -f2 | sed -e 's/^"//' -e 's/"$//'`
cat "${file}" | grep "portid=" | cut -d " " -f3 | grep -Po '".*?"' | sed -e 's/^"//' -e 's/"$//' | while read -r line; do
        echo "${ip_address}:${line}"
done
