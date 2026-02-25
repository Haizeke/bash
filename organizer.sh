#!/bin/bash

echo "__--__--__ File organizer --__--__--"

for file in *
do

if [[ "$file" == *.txt ]]; then
	echo "This is a text file .....sorting now"
	mkdir -p Textfiles
	mv "$file" Textfiles/
fi

if [[ "$file" == *.sh ]]; then
	echo "This is a bash script ........sorting now"
	mkdir -p Bashscripts
	mv "$file" Bashscripts/
fi

if [[ "$file" == *.log ]]; then
       echo "This is a log file ......sorting now"
       mkdir -p Logfiles
       mv "$file" Logfiles/
fi
done

echo "successfully arranged the files"
