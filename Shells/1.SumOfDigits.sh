# 1. Write a shell script to calculate the sum of digits of any number entered through keyboard.

echo "Enter a number"
read a
while [ $a -ne 0 ]
do
    rem=`expr $a % 10`
    sum=`expr $sum + $rem`
    a=`expr $a / 10`
done
echo "Sum of digits = $sum"