# 38. The file /etc/password contains information about all the users. However, it is difficult to decipher the information stored in it. Write a shell script which would receive the log name during execution, obtain information about it from /etc/password and display this information on screen in easily understandable format.

if [ $# -ne 1 ]
then 
    echo "Invalid arguments"
    exit
fi

log_name=$1
password_file="/etc/passwd"

if ! grep -q "^[^:]*:$log_name:" "$password_file"
then
    echo "User $log_name does not exist"
    exit
fi

user_info=$(grep "^[^:]*:$log_name:" "$password_file")

username=$(echo "$user_info" | cut -d ':' -f 1)
user_id=$(echo "$user_info" | cut -d ':' -f 3)
group_id=$(echo "$user_info" | cut -d ':' -f 4)
home_directory=$(echo "$user_info" | cut -d ':' -f 6)
shell=$(echo "$user_info" | cut -d ':' -f 7)

echo "Username: $username"
echo "User ID: $user_id"
echo "Group ID: $group_id"
echo "Home directory: $home_directory"
echo "Shell: $shell"

