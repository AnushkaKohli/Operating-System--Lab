# 16. How will you quickly move to the fifth word of a line and replace its four characters with something else.

echo "Enter the character to be replaced"
read char
echo "Enter a sentence"
read a
# Finding total number of words in the sentence
words=`echo $a | wc -w`
# if the number of words is less than 5 then print the sentence as it is
if [ $words -lt 5 ]
then
    echo "$a"
else
    # if the number of words is greater than 5 then print the first four words
    x=`echo $a | cut -d " " -f 1-4`
    echo -n "$x "
    # find the number of characters in the fifth word
    y=`echo $a | cut -d " " -f 5 | wc -c`
    y=`expr $y - 1`
    # if the number of characters is less than 4 then print the character to be replaced as many times as the number of characters in the fifth word
    if [ $y -le 4 ]
    then
        i=0
        while [ $i -lt $y ]
        do
            echo -n "$char"
            i=`expr $i + 1`
        done
    else
        echo -n "$char$char$char$char"
        # the fifth word is stored in x
        x=`echo $a | cut -d " " -f 5`
        # find the remianing characters in the fifth word
        l=`echo $x | cut -c 5-$y`
        echo -n "$l "
        # find the number of remaining words in the sentence
        l=`echo $a | wc -w`
        echo -n $a | cut -d " " -f 6-$l
    fi
fi
