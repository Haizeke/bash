#!/bin/bash

read -p "What is the file you want to backup?" source

#- to check if the supposed file exists

if [[ -d "$source" ]]; then

	echo "$source has been found, backup will commence"

	mkdir -p backups

#creates a string like 2026-02-20 $(date +%F) and adds the time so you can backup multiple times a day $(date +%H-%M)

   	 DEST="backups/${source}_$(date +%F_%H-%M-%S)"

	 cp -r "$source" "$DEST"

	 echo "$source has been successfully backed up"

else

echo "error, $source does not exist"	

fi
