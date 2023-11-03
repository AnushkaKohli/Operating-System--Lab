# 1. Write a shell script to calculate the sum of digits of any number entered through keyboard.

echo "Enter a number"
read a
while [ $a -ne 0 ]
do
    rem=`expr $a % 10`
    sum=`expr $sum + $rem`
    a=`expr $a / 10`
done
echo "Sum of digits = $sum"

# The exit status of grep is 0 if a match was found and 1 if no match was found. If an error occurred, the exit status is 2.

# 1. " ": Double quotes preserve the literal value of all characters within the quotes, with the exception of $, ` `, and \. This means that if you have a variable within double quotes, its value will be expanded. For example:
# var="world"
# echo "Hello $var"  # Outputs: Hello world

# 2. ' ': Single quotes preserve the literal value of all characters within the quotes. This means that no variable or command substitution will occur within single quotes. For example:
# var="world"
# echo 'Hello $var'  # Outputs: Hello $var

# 3. ` `: Backticks are used for command substitution. This means that the command within the backticks will be executed, and its output will replace the backticks. For example:
# echo `date`  # Outputs: the current date and time
