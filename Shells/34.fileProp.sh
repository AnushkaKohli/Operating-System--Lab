# 34. Write a shell script to find the total number of words, characters, lines in the given file (supplied as command line argument) and check if it is a regular file or not.

if [ $# -ne 1 ]
then 
    echo "Invalid arguments"
    exit
fi

echo "Number of words: $(wc -w < "$1")"
echo "Number of characters: $(wc -m < "$1")"
echo "Number of lines: $(wc -l < "$1")"

# The -f flag in shell scripting is a test operator used to check if a file exists and is a regular file. 
if [ -f "$1" ]
then
    echo "$1 is a regular file"
else
    echo "$1 is not a regular file"
fi