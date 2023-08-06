# 1. Write a shell script to calculate the sum of digits of any number entered through keyboard.

echo "Enter a number"
read a
while [ $a -ne 0 ]
do
    b=`expr $a % 10`
    sum=`expr $sum + $b`
    a=`expr $a / 10`
done
echo "Sum of digits = $sum"