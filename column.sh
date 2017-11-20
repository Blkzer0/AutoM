#!/bin/bash

read -p "What is the infile?" infile
in_file=$infile      # Input file
params=3            # Parameters count
res_file=$(mktemp)  # Temporary file
sep=' '             # Separator character

# Print header
cnt=0
for i in $(cat $in_file | head -$((params*2))); do
    if [ $((cnt % 2)) -eq 0 ]; then
        echo $i
    fi
    cnt=$((cnt+1))
done | sed ":a;N;\$!ba;s/\n/$sep/g" >>$res_file

# Parse and print values
cnt=0
for i in $(cat $in_file); do
    # Print values, skip param names
    if [ $((cnt % 2)) -eq 1 ]; then
        echo -n $i >>$res_file
    fi

    if [ $(((cnt+1) % (params*2))) -eq 0 ]; then
        # Values line is finished, print newline
        echo >>$res_file
    elif [ $((cnt % 2)) -eq 1 ]; then
        # More values expected to be printed on this line
        echo -n "$sep" >>$res_file
    fi

    cnt=$((cnt+1))
done

# Make nice table format
cat $res_file | column -t
rm -f $res_file

#Explanation

#This scripts assumes that:

#    input file is called "in.txt" (see in_file variable)
#    input file uses format you described in question
#    result table should have 3 columns (see params variable)

#Most of the code is just parsing of your input data format. Actual column formatting is done by column tool.

#If you want to export this table to excel, just change sep variable to ',' and save result output to .csv file. This file can be easily imported in excel application.
#Example

#Input file:

#Size
#387
#Name
#Velvet
#Time
#13
#Size
#31415
#Name
#Minia
#Time
#18
#Size
#31337
#Name
#ABCDEF
#Time
#42

#Script output:

#Size   Name    Time
#387    Velvet  13
#31415  Minia   18
#31337  ABCDEF  42

