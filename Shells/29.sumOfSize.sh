# 29. Write a shell script that shows the names of all the non-directory files in the current directory and  calculates the sum of the size of them.

ls -l | tr -s ' ' | grep ^- | cut -d ' ' -f 5,9 > temp
sum=0
while read x
do
    size=`echo $x | cut -d ' ' -f 1`
    sum=`expr $sum + $size`
done < temp
rm temp
echo "Sum of the sizes of all the non-directory files in the current directory is $sum"