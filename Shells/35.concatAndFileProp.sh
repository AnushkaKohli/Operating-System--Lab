# 35. Write a shell script to concatenate two files and count the number of characters, number of words and number of lines in the resultant concatenated file.

if [ $# -ne 2 ]
then 
    echo "Invalid arguments"
    exit
fi

cat "$1" "$2" > temp.txt

echo "Number of characters: `wc -m < temp.txt`"
echo "Number of words: `wc -w < temp.txt`"
echo "Number of lines: `wc -l < temp.txt`"

rm temp.txt