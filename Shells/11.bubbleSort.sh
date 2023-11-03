# Write a shell script to sort a list of elements using bubble sort technique.
echo "Enter number of elements"
read num
echo "Enter elements"
l=0 k=0 n=0 
while [ $l -lt $num ]
do
    read arr[$l]
    l=`expr $l + 1`
done
while [ $k -lt $num ]
do
    while [ $n -lt `expr $num - $k - 1` ]
    do
        if [ ${arr[$n]} -gt ${arr[`expr $n + 1`]} ]
        then
            temp=${arr[$n]}
            arr[$n]=${arr[`expr $n + 1`]}
            arr[`expr $n + 1`]=$temp
        fi
        n=`expr $n + 1`
    done
    k=`expr $k + 1`
    n=0
done
echo "Sorted array"
for i in ${arr[*]}
do
    echo $i
done
