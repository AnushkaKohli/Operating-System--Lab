# 30.  Write a shell script to list the name of files under the current directory started with vowels.

ls -l | tr -s ' ' | cut -d ' ' -f 9 | grep ^[aeiou]