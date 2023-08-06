# 2. Write a program that displays the result of division of one integer by another and informs if the user tries to divide an integer by zero.

echo "Enter first number"
read a
echo "Enter second number"
read b
if [ $b -eq 0 ]
then
    echo "Division by zero is not possible"
else
    c=`expr $a / $b`
    echo "Division result = $c"
fi