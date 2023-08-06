# 14. Accept a string from the terminal and echo a suitable message if it doesn’t have at least ten characters.

echo "Enter a string"
read str
len=`echo $str | wc -c`
len=`expr $len - 1`
if [ $len -lt 10 ]
then
    echo "The string has less than 10 characters"
else
    echo "The string has $len characters"
fi
