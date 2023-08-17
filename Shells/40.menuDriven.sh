# 40. Device a menu-driven shell program which accepts values 1 to 4 and performs actions depending upon the number keyed in:
# 1. List of files 
# 2. Present date
# 3. Users of the system
# 4. Quit to UNIX

while true
do
    echo "Enter a choice: "
    echo "1. List of files"
    echo "2. Present date"
    echo "3. Users of the system"
    echo "4. Quit to UNIX"
    echo "Enter your choice: "
    read ch
    case $ch in
        1) echo "List of files: `ls`";;
        2) echo "Present date: `date`";;
        3) echo "Users of the system: `who`";;
        4) exit;;
        *) echo "Invalid choice";;
    esac
done

