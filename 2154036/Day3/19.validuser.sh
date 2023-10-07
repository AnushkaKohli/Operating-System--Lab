echo "Enter name of the user"
read name
who | grep $name" " > /dev/null
if [ $? -eq 0 ]
then 
	echo "Valid user"
else
	echo "Invalid user"
fi

