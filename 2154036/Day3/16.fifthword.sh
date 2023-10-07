echo "Enter a character"
read ch
echo "Enter a sentence"
read a
x=`echo $a | cut -d ' ' -f 1-4`
echo -n $x" "$ch$ch$ch$ch
x=`echo $a | cut -d ' ' -f 5`
l=`echo $x | wc -c`
y=`echo $x | cut -c 5-$l`
echo -n $y" "
l=`echo $a | wc -w`
echo $a | cut -d ' ' -f 6-$l
