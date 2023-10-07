echo "Enter a sentence"
read a
v=`echo $a | tr -cd [A-Za-z] | tr [A-Z] [a-z] | tr -cd [aeiou] | wc -c`
c=`echo $a | tr -cd [A-Za-z] | tr [A-Z] [a-z] | tr -d [aeiou] | wc -c`
echo "Number of vowels is: " $v
echo "Number of consonants is: " $c

