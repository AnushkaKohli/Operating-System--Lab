echo "Enter two numbers"
read a
read b
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch
case $ch in
	1) 
	c=`expr $a + $b` 
	echo "Addition = " $c;; 
	2) 
	c=`expr $a - $b` 
	echo "Subtraction = " $c;;
	3) 
	c=`expr $a \* $b` 
	echo "Multiplication = " $c;;
	4) 
	if [ $b -eq 0 ]
		then echo "Division not possible"
	else 
		c=`echo "scale=2;$a / $b" | bc` 
		echo "Division = " $c
	fi
	;;
	*)
esac

