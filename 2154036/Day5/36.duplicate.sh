if [ $# -ne 2 ]
then 
	echo "Invalid arguments."
	exit
fi
cmp $1 $2 > /dev/null
if [ $? -eq 0 ]
then 
	echo "Files are same"
	rm $2
else 
	echo "Files are different"
	cat $1 $2 > temp
	mv temp $1
fi
