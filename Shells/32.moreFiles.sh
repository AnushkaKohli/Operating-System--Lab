# 32. Write a shell script which reads a directory name and compares the files in the current directory which has more files and how much more files.

if [ $# -ne 1 ]
then 
    echo "Invalid arguments"
    exit
fi

dir_size=`ls $1 | wc -l`
curr_size=`ls | wc -l`

if [ $dir_size -gt $curr_size ]
then
    echo "$1 has more files than current directory by $((dir_size - curr_size))"
elif [ $dir_size -lt $curr_size ]
then
    echo "Current directory has more files than $1 by $((curr_size - dir_size))"
else
    echo "Both directories have same number of files"
fi


