#!/bin/bash

echo _-_-_ Control Panel -_-_-

echo ""

while true
do

	echo "1. Show System Time"
	echo "2. Show Who I Am (Username)"
	echo "3. Show files in this folder"
	echo "4. Exit"

	read -p "Enter your choice(1-3): " choice

if [[ "$choice" == "1" ]]; then 
	sleep 1
	date
elif [[ "$choice" == "2" ]]; then
	sleep 1
	whoami
elif [[ "$choice" == "3" ]]; then
       sleep 1	
	ls -l
elif [[ "$choice" == "4" ]]; then
	sleep 1
	echo "See you later!"
	exit 0
else 
	echo "❌ $choice is not a valid option: choose between options 1-4"

fi

done
