#!/bin/bash -x
read -p "Enter a first name" firstName
read -p "Enter a valid Email" email
read -p "Enter a valid phone number" phone
validPhone="^(91) [0-9]*{10}"
validName="^[A-Z][a-z]{2,} [A-Z][a-z]{2,}$"
validEmailId="^[a-zA-Z]{3}\.?[a-zA-Z0-9\$\_\+]*\@[a-z0-9]*\.(co|in|com|net)"
if [[ $firstName =~ $validFirstName ]]
then
	if [[ $email =~ $validEmailId ]]
	then
		if [[ $phone =~ $validPhone ]]
		then
			echo Valid
		else 
			echo No
		fi
	else
		echo Invalid
	fi
else 
	echo No
fi

