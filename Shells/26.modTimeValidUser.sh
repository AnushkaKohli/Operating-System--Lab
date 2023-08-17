# 26. Write a shell script which finds out the following:
# a. the last modification time of a file
# b. whether the command line input string is a valid user or not

if [ $# -ne 2 ]
then
    echo "Invalid argument"
fi
if [ -f $1 ]
    then
        echo "Last modification time of $1 is $(date -r $1)"
else
    echo "$1 is not a file"
fi
who | grep $2" " > /dev/null
if [ $? -eq 0  ]
    then
        echo "$2 is a valid user"
else
    echo "$2 is not a valid user"
fi