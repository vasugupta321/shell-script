#!/bin/sh

if [ "$#" -le 2 -o "$#" -gt 3 ] #This is to check whether the user has entered invalid arguments or is missing an argument
then
	echo "Usage -./calculator.sh  value1  operator value2"
	echo "where" 
	echo "value1: numeric value"
	echo "value2: numeric value"
	echo "operator: one of +,-,/,x"
	fi
	
	case $2 in #I use case statements here as its much simpler than if statements to check what type is operation was entered
		"+") expr $1 + $3;; #If the operation is add
		"-") expr $1 - $3;; #If the operation is subtract
		"x") expr $1 \* $3;; #If the operation is multiply
		"/") if [ "$2" == "/" ] && [ "$3" == "0" ]; #For division we check if the user has entered a zero for the 3rd argument
			then
				echo "Division-by-zero Error!"; #We give an error as we cannot divide a number by zero
			else 
				expr $1 / $3 #If we are dividing by a non zero number then just exectute division statement
		fi
	esac
	

