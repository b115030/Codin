#set environment usersecret=”dH34xJaa23” if its already not set
#!/bin/bash
export usersecret;
if [ $usersecret ]
then 
	echo Error;
fi
usersecret=dH34xJaa23;
echo $usersecret;

