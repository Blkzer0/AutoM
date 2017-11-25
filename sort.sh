read -p "What is the file you want to sort?" text
read -p "What is the name of the output file?" output
sort $text | uniq > $output
sleep 1
cat $output
exit 
