ls -l | tr -s ' ' | grep ^- | cut -d ' ' -f 5,9 > temp
s=0
while read x
do
	y=`echo $x | cut -d ' ' -f 1`
	s=`expr $s + $y`
	echo $x | cut -d ' ' -f 1,2
done < temp
rm temp
echo "Sum is $s"

