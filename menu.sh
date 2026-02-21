#!/bin/bash

while true; do

echo "---- master dashboard ----"
echo ""

echo "1.Calculator"
echo "2.Backup Tool"
echo "3.Login gatekeeper"
echo "4.Exit"

echo ""

read -p "Pick a choice:" choice

if [[ "$choice" == "1" ]]; then
	
echo "you have picked the calclator, fairs."

	bash calc.sh

elif [[ "$choice" == "2" ]]; then

echo "you have picked the backup tool, fairs."	

        bash back.sh


elif [[ "$choice" == "3" ]]; then

echo "you have picked the login tool, fairs."

        bash login.sh

elif [[ "$choice" == "4" ]]; then

echo "exiting now! ......"

break

else 

echo "Invalid choice, please pick between 1-4"	

fi

echo ""
echo "__________________________"
echo ""

done
