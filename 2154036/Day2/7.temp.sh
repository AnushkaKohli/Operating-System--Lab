echo "Enter temperatures"
i=1
sum=0
while [ $i -lt 8 ]
do
	echo "Day $i: "
	read a
	sum=`expr $sum + $a`
	i=`expr $i + 1`
done
avg=`echo "scale=2; $sum / 7" | bc`
echo "Average temperature is: " $avg

