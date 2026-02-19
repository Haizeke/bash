#!/bin/bash

read -p "Input first number" num1
read -p "Input second number" num2

read -p "Which operation do you intend to perform with these two numbers(+, -, *)" operation



if [[ ! "$num1" =~ ^[0-9]+$ ]] || [[ ! "$num2" =~ ^[0-9]+$ ]]; then
        echo "enter a valid number"

	exit 1

fi


# -the structure for addition, multiplication and subtraction

if [[ "$operation" = "+" ]]; then
	RESULT=$(($num1 + $num2))
	echo "The sum is: $RESULT"
fi

if [[ "$operation" = "*" ]]; then
	RESULT1=$(($num1 * $num2))
	echo "The product is: $RESULT1"

fi

if [[ "$operation" = "-" ]]; then
	RESULT2=$(($num1 - $num2))
	echo "The answer is: $RESULT2"


fi
