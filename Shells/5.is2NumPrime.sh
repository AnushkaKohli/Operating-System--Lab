# 5. Write a shell script to determine whether two numbers input through keyboard are prime to each other.

echo "Enter first number"
read num1
echo "Enter second number"
read num2
a=$num1
b=$num2
while [ $b -ne 0 ]
do
    temp=$b
    b=`expr $a % $b`
    a=$temp
done
gcd=$a
if [ $gcd -eq 1 ]
then
    echo "$num1 and $num2 are prime to each other"
else
    echo "$num1 and $num2 are not prime to each other"
fi