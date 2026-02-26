#!/bin/bash

read -p "Which file type should i look for (tmp/log/sh/txt)?: " ext


for file in *."$ext"
do

if [[ ! -s "$file" ]]; then
       sleep 1	
	echo "I found $file and it's empty"

read -p "Should i delete the file?(y/n): " choice

sleep 1

if [[ "$choice" == "y" ]]; then
	rm "$file"
echo "File has been successfully deleted"

else
	echo "File skipped"
fi

fi

done

