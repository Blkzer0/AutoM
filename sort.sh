echo "What is the file you want to sort?"
read text
echo "What is the name of the output file?"
read output
sort $text | uniq > $output
sleep 1
cat $output
