# 26. Write a shell script which finds out the following:
# a. the last modification time of a file
# b. whether the command line input string is a valid user or not

# if [ $# -ne 1 ]
# then
#     echo "Invalid argument"
# else
#     if [ echo $1 | grep "^-" -eq 0 ]
#     then
#         echo "Last modification time of $1 is $(date -r $1)"
#     who | grep $name" " > /dev/null
#     elif [ $? -eq 0  ]
#     then
#         echo "$1 is a valid user"
#     else
#         echo "$1 is not a valid user"
#     fi
# fi