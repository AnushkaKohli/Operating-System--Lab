# 33. Write a shell script to check the entered file is a blank file or not. If not found blank then display the contents of the file.

if [ $# -ne 1 ]
then 
    echo "Invalid arguments"
    exit
fi

if [ ! -f "$1" ]
then
    echo "File $1 does not exist"
    exit
fi

# The `-s` flag is used in the shell script to check if the file has a size greater than zero. If the file is empty or blank, the `-s` condition will evaluate to false.
if [ ! -s "$1" ]
then
    echo "File $1 is blank"
    exit
else
    cat "$1"
fi

