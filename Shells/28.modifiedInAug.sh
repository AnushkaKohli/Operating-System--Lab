# 28. Develop a shell script which displays all files with all attributes those have created or modified in the month of August.

ls -l | tr -s " " | grep [0-9]' 'Aug' '[0-9]