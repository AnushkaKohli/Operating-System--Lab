# 31. Write a shell script that accepts two directory names bar1 and bar2 as arguments and deletes those files in bar2 which are identical to their names in bar1.

if [ $# -ne 2 ]
then
    echo "Invalid number of arguments"
    exit
fi
ls $1 > temp
while read x
do
    ls $2 | grep $x > /dev/null
    if [ $? -eq 0 ]
    then
        rm $2/$x
    fi
done < temp
rm temp