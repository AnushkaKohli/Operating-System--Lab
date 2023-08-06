# 10. Write a shell script that produces a shell calculator to perform the following operations:
#  Addition
#  Subtraction
#  Multiplication
#  Division

echo "Enter two numbers"
read a b
echo "Operations: 1. Addition 2. Subtraction 3. Multiplication 4. Division"
echo "Enter operation to be performed"
read op
case $op in
    1) c=`expr $a + $b`
        echo "Addition: $c";;
    2) c=`expr $a - $b`
        echo "Subtraction: $c";;
    3) c=`expr $a \* $b`
        echo "Multiplication: $c";;
    4) if [ $b -eq 0 ]
        then
           echo "Division by zero is not possible"
        else
            # res = echo "scale=2; $a / $b" | bc
            c=`expr $a / $b`
            echo "Division: $c"
        fi;;
    *) echo "Invalid operation"
esac