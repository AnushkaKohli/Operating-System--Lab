if [ $# -ne 2 ]
then 
	echo "Invalid arguments."
	exit
fi
ls $1 > temp
while read x
do
	ls $2 | grep $x > /dev/null
	if [ $? -eq 0 ] 
	then 
		rm $2/$x
	fi
done < temp
rm temp
