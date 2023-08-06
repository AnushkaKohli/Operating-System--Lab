# 23. Write a shell script, which reports names and sizes of all files in a directory (directory should be supplied as an argument to the shell script) which size exceeds 500 bytes. The filenames should be printed in decreasing order of their sizes. The total number of such files should also be reported.

if [ $# -ne 1 ]
then
    echo "Folder name not supplied"
    exit 1
fi
ls -l $1 | tr -s " " | cut -d " " -f 5,9 | sort -nr > temp
count=0
while read x
do
    size=`echo $x | cut -d " " -f 1`
    if [ $size -gt 500 ]
    then
        count=`expr $count + 1`
        echo $x
    fi
done < temp
echo "Total number of files with size greater than 500 bytes: $count"
rm temp