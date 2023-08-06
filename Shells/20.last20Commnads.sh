# 20. Write a shell script to print last twenty commands issued by the user. The user name is supplied as a command line argument to the script (use bash-history file).

if [ $# -eq 0 ]
then
    echo "No arguments supplied"
else
    grep $1 ~/.bash_history | tail -20
fi