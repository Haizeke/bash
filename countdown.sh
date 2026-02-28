#!/bin/bash

echo " +++++ countdown timer ++++ "
echo ""
read -p "How many seconds for the countdown? " count


while [[ "$count" -gt 0 ]]
do	
	echo "$count"
	sleep 1
	((count--))

done

echo "BLAST OFF! 🚀"
