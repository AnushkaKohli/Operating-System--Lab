# 19. Write the shell script to check the entered user is a valid user or not.

echo "Enter the name of the user: "
read name
who | grep $name" " > /dev/null
if [ $? -eq 0 ]
then
    echo "The user is a valid user"
else
    echo "The user is not a valid user"
fi