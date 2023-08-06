# 22. Write a shell program, which displays the message” welcome” and prints the date when you login to your system.
echo "Welcome"
grep whoami who | cut -d " " -f 3
