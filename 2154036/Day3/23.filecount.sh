if [ $# -ne 1 ]
then
	echo "Folder name not given"
	exit
fi
ls -l $1 | tr -s ' ' | cut -d ' ' -f 5,9 | sort -rn > temp
cn=0
while read x
do
	y=`echo $x | cut -d ' ' -f 1`
	if [ $y -ge 200 ]
	then
		cn=`expr $cn + 1`
		echo $x
	fi
done < temp
echo "No. of files with size greater than 200 is " $cn
rm temp
