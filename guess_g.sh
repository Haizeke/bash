#!/bin/bash

echo "==== Guessing game ===="

target=42
choice=0

while [[ ! "$choice" == "$target" ]] 
do 
   read -p "Guess my number: " choice
   echo ""     

	if [[ "$choice" == "$target" ]]; then
	sleep 1
	echo ""
		echo "Good job🎉, you guessed it right, the number was $target"

	elif [[ "$choice" -lt "$target" ]]; then
	sleep 1
	echo ""
		echo "Your guess is too low, try higher"

	elif [[ "$choice" -gt "$target" ]]; then 
	sleep 1
	echo ""
		echo "Your guess is too high, try lower"
	fi

done


