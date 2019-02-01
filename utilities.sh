#!/bin/sh

input=0
while [ $input -ne 5 ]; #To be able to run this in an eternal loop we check if the option chosen is not the exit option					
do				        #And if it is not then we can keep on selecting different options until the exit option is chosen
	echo ----------------------------------------

	echo	"   M A I N - M E N U   "

	echo ----------------------------------------

	echo 1. Ongoing Processor Activity
	echo 2. Users currently logged in
	echo 3. Number of users currently logged in
	echo 4. Users with bash shell
	echo 5. Exit
	echo ----------------------------------------

	read -p "Please enter option [1-5]:" input #I use -p here to be able to read the input in one line
	case $input in #Case statements used as user chooses option between 1-5 and code is executed depending on which option was chosen
		1) top;;
		2) who;;
		3) who -u | wc -l;; #or you can do who | sort | cut -c -8 | wc -l;;
		4) ps aux | grep bash | grep -v grep | cut -d " " -f 1 | sort | uniq;;
		5) exit;;
	esac

read -p "Press [enter] key to continue..." #User can press the enter key to continue and choose another option they would like to try
clear #We clear the screen so the menu shows again and prompts the user to enter an option
done

