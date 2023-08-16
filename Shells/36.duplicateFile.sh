# 36. Write a shell script to take the two filename as an input and if they are not duplicate file then concatenate them otherwise delete the second one.

if [ $# -ne 2 ]
then
    echo "Invalid number of arguments"
    exit
fi
cmp $1 $2 > /dev/null
if [ $? -eq 0 ]
then
    echo "Files are duplicate"
    rm $2
else
    echo "Files are different"
    cat $1 $2 > $1
fi