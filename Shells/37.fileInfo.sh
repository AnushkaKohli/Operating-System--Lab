# 37. Write a shell script, which will receive either the filename or the filename with its full path during execution. This script should print information bout the file as giving by ls –l command and display it in an informative manner.

if [ $# -ne 1 ]
then 
    echo "Invalid arguments"
    exit
fi

echo "File name: `ls -l "$1" | cut -d ' ' -f 9`"
echo "File size: `ls -l "$1" | cut -d ' ' -f 5`"
echo "Owner: `ls -l "$1" | cut -d ' ' -f 3`"
echo "Group: `ls -l "$1" | cut -d ' ' -f 4`"
echo "Permissions: `ls -l "$1" | cut -d ' ' -f 1`"
echo "File type: `ls -l "$1" | cut -d ' ' -f 1 | cut -c 1`"
echo "Last modified / accessed / changed: `ls -l "$1" | cut -d ' ' -f 6-8`"