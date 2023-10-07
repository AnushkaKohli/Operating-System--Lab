ls -l | grep ^[-dcb]rwx | tr -s ' ' | cut -d ' ' -f 9
