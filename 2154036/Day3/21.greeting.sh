hr=`date +%H`
if [ $hr -ge 4 -a $hr -lt 13 ]
then 
	echo "GOOD MORNING"
elif [ $hr -ge 13 -a $hr -le 21 ]
then 
	echo "GOOD AFTERNOON"
else
	echo "GOOD NIGHT"
fi
