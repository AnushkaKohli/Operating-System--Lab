# 18. Write a sequence to display the list of users as well as the number of users connected to the system

echo "The list of users are: "
who | cut -d " " -f 1 | sort | uniq
echo "The number of users connected to the system are: "
who | cut -d " " -f 1 | sort | uniq | wc -l
