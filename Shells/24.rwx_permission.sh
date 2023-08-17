# 24. Write a shell script, which displays a list of all files in the current directory to which you have read, write and executes permissions.

ls -l | grep ^[-dcb]rwx | tr -s ' ' | cut -d ' ' -f 9
