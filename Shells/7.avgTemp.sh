# 7. Write a shell script to read date and temperature of last seven says and show the average temperature of the last seven days.

echo "Enter the temperature of last seven days"
i=1
sum=0
while [ $i -le 7 ]
do
    echo "Enter the temperature of day $i"
    read temp
    sum=`expr $sum + $temp`
    i=`expr $i + 1`
done
avg=`expr $sum / 7`
# avg=`echo "scale=2; $sum / 7" | bc`
echo "The average temperature of last seven days is $avg"
