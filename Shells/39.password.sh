# 39. Write a shell script to make a password-based menu-driven program, which will give three chances to enter the password in case of wrong password. If the given password is correct then the program will show the
# a) Number of users currently logged in. 
# b) Calendar of current month.
# c) Date in the format: dd / mm / yyyy.
# d) Exit

echo "Enter the password: "
read pw
i=3
while [ $i -gt 0 ]
do
    echo "Enter password to compare: "
    read pw2
    if [ $pw = $pw2 ]
    then
        while true 
        do
            echo "Enter a choice: "
            echo "1. Number of users currently logged in."
            echo "2. Calendar of current month."
            echo "3. Date in the format: dd / mm / yyyy."
            echo "4. Exit"
            echo "Enter your choice: "
            read ch
            case $ch in
                1) echo "Number of users currently logged in are: `who | wc -l`";;
                2) echo "Calendar of current month is: `cal`";;
                3) echo "Date is: `date +%d/%m/%Y`";;
                4) exit;;
                *) echo "Invalid choice";;
            esac
        done
    else
        echo "Wrong password"
        i=`expr $i - 1`
        echo "Chances left: $i"
    fi
done