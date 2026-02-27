#!/bin/bash

echo "=== Nightclub entry validation ==="
echo "you must be 18+ to enter"
echo ""

age=0
attempt=0
max_attempts=3
#keep asking while the age is less than 18

while [[ "$age" -lt 18 ]]
do 
	read -p "How old are you? " age
	sleep 1
	if [[ ! "$age" =~ ^[0-9]+$ ]]; then
		echo "Please enter a valid number!"
		age=0 #reset the age to keep the loop going
		continue
	fi

	if [[ "$age" -lt 18 ]]; then 
		((attempt++))
		echo ""
		echo "Sorry you are only $age. Come back when you are 18+!"
	
		
	if [[ "$attempt" -ge "$max_attempts" ]]; then
		sleep 1
		echo ""
		echo "You have tried too many times, you  are banned for the night"
		exit 1
	fi	
sleep 1
	
	fi
done

echo "Age verified, have a nice time"
