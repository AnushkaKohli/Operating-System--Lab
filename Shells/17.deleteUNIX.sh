# 17. Write a shell script which deletes all lines containing the word UNIX in the files supplied as arguments to this shell script.

if [ $# -eq 0 ]
then
    echo "No arguments supplied"
else
    for arg in $@
    do
        grep -v "UNIX" $arg > temp
        mv temp $arg
        echo "The new file $arg is"   
        cat $arg

    done
fi

