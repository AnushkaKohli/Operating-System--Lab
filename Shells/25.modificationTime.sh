# 25. Write a shell command that accept a filename as argument and displays the last modification time, if the file exists and a suitable message if it does not.

if [ $# -ne 1 ]
then
    echo "No arguments supplied"
else
    if [ -f $1 ]
    then
        echo "Last modified time of $1 is $(date -r $1)"
    else
        echo "$1 does not exist"
    fi
fi