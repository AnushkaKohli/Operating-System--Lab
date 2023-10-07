echo "Enter first number"
read a
while [ $a -ne 0 ]
do
	c=`expr $a % 10`
	d=`expr $d + $c`
	a=`expr $a / 10`
done
echo "Result = " $d
