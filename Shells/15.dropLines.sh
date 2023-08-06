# 15. Write a shell script to drop the lines which are matched with a given word.

echo "Enter the word to be dropped"
read word
echo "Enter the file name"
read file
# `grep -v   > temp` is using the `grep` command to search for lines in the file that do not match the given word (`-v` option is used to invert the match). The lines that do not match the word are then redirected to a temporary file called `temp` using the `>` operator.
grep -v $word $file > temp
# `mv temp ` is a command that is used to move or rename a file. In this case, it is used to rename the temporary file `temp` to the original file name ``. This effectively replaces the original file with the modified version that has the lines matching the given word dropped.
mv temp $file
echo "The new file is"
cat $file
