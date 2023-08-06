# 13. Write a shell script which counts the number of consonants and vowels in a given sentence.

echo "Enter the sentence"
read a
v=`echo $a | tr -cd [A-Za-z] | tr [A-Z] [a-z] | tr -cd [aeiou] | wc -c`
c=`echo $a | tr -cd [A-Za-z] | tr [A-Z] [a-z] | tr -d [aeiou] | wc -c`
echo "The number of vowels is $v"
echo "The number of consonants is $c"
