# 12. Write a shell script to print the following pattern for any number of lines:
#         *
#       * * *
#     * * * * *
#   * * * * * * *
# * * * * * * * * *

echo "Enter number of lines"
read n
i=1
while [ $i -le $n ]
do
    j=1
    while [ $j -le `expr $n - $i` ]
    do
        echo -n " "
        j=`expr $j + 1`
    done
    k=1
    while [ $k -le `expr 2 \* $i - 1` ]
    do
        echo -n "*"
        k=`expr $k + 1`
    done
    i=`expr $i + 1`
    echo
done