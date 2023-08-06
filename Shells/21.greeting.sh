# 21. Write a shell script, which gets executed the moment a user logs in. It should display the message “GOOD MORNING” or “GOOD AFTERNOON” or “GOOD EVENING” depending upon the time at which the user logs in.

hr=`date +%H`
if [ $hr -ge 4 -a $hr -lt 13 ]
then
    echo "Good Morning"
elif [ $hr -ge 13 -a $hr -lt 20 ]
then
    echo "Good Afternoon"
else
    echo "Good Evening"
fi