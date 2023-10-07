echo "Enter the password"
read pw
i=3
while [ $i -ne 0 ]
do
	echo "Enter password to compare"
	read pw2
	if [ $pw != $pw2 ] 
	then
		echo "Incorrect password"
		i=`expr $i - 1`
	else
		while true
		do
			echo "Enter a choice: "
			echo "1.Number of users currently logged in"
			echo "2.Calendar of current month"
			echo "3.Date in the format: dd / mm / yyyy"
			echo "4.Exit"
			read ch
			case $ch in
			1) echo "Number of users currently logged in are: `who | wc -l`"
			;;
			2) echo "Calendar of current month is: `cal`"
			;;
			3) echo "Date is: `date +%d`/`date +%m`/`date +%Y`"
			;;
			4) exit
			;;
			*) echo "Enter correct option"
			esac
		done
	fi
done


