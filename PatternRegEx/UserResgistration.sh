#!/bin/bash -x
read -p "Enter a first name" firstName
read -p "Enter a valid Email" email
read -p "Enter a valid phone number" phone
read -p "Enter a valid Password" password
validPassword="^[A-Za-z0-9\#\$\+\*\@]{8,}$" 
validPhone="^(91) [0-9]*{10}"
validName="^[A-Z][a-z]{2,} [A-Z][a-z]{2,}$"
validEmailId="^[a-zA-Z]{3}\.?[a-zA-Z0-9\$\_\+]*\@[a-z0-9]*\.(co|in|com|net)"
if [[ $firstName =~ $validName ]]
then
	if [[ $email =~ $validEmailId ]]
	then
		if [[ $phone =~ $validPhone ]]
		then
			if [[ $password =~ $validPassword ]]
			then
				echo Valid
			else
				echo Invalid Password
			fi
		else 
			echo Invalid Phone Number
		fi
	else
		echo Invalid Email ID
	fi
else 
	echo Invalid Name
fi

