#!/bin/bash
read -p "Enter a first name" firstName

validFirstName="^[A-Z][a-z]{2,} [A-Z][a-z]{2,}$"
if [[ $firstName =~ $validFirstName ]]
then
		echo Valid
	else
		echo Not Valid
fi

