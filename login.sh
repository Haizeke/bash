#!/bin/bash

SECRET="linux123"
GUESS=""
ATTEMPTS=0
name=$1

echo "Welcome $1" 

while [[ "$GUESS" != "$SECRET" && "$ATTEMPTS" -lt 3 ]]; do


read -s -p  "What is the password: " GUESS
echo ""


if [[ "$GUESS" != "$SECRET"  ]]; then

	((ATTEMPTS++)) 

	echo "Access denied, the secret password is incorrect: Strike "$ATTEMPTS"/3"

fi


done

if [[ "$GUESS" == "$SECRET" ]]; then

echo "congratulations $1, the password is correct"

else 
	echo "You've been logged out $1, you have exceeded the number of attempts"
	
fi

