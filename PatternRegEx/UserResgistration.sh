#!/bin/bash -x
read -p "Enter a first name" firstName
read -p "Enter a valid Email" email

validName="^[A-Z][a-z]{2,} [A-Z][a-z]{2,}$"
validEmailId="^[a-zA-Z]{3}\.?[a-zA-Z0-9\$\_\+]*\@[a-z0-9]*\.(co|in|com|net)"
if [[ $firstName =~ $validFirstName ]]
then
	if [[ $email =~ $validEmailId ]]
	then
		echo Valid
	else
		echo No
	fi
else 
	echo No
fi

