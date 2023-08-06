# 6. Write a shell script to show the maximum of three numbers provided as command line arguments.

# `if [ $# -ne 3 ]` is checking if the number of command line arguments passed to the script is not equal to 3.
if [ $# -eq 3 ]
then
    if [ $1 -gt $2 -a $1 -gt $3 ]
    then
        echo "$1 is the greatest number"
    elif [ $2 -gt $1 ] && [ $2 -gt $3 ]
    then
        echo "$2 is the greatest number"
    else
        echo "$3 is the greatest number"
    fi
else
    echo "Invalid input. Please pass 3 numbers as command line arguments"
fi