#!/bin/bash
#clears memory cache

sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"
echo "Cache Cleaned"
