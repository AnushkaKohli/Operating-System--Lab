# 4. Write a shell script to check whether a given number is prime or not.

echo "Enter a number"
read num
i=2
if [ $num -lt 2 ]
then
    echo "$num is not a prime number"
else
    while [ $i -lt $num ]
    do
            if [ `expr $num % $i` -eq 0 ]
            then
                echo "$num is not a prime number"
                exit
            fi
            i=`expr $i + 1`
    done
    echo "$num is a prime number"
fi