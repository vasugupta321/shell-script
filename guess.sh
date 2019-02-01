#!/bin/sh
Number=$[ ( $RANDOM % 64 ) + 1 ] #This generates a random nubmer between 1 and 64 inclusive

echo "Welcome to the number game"
echo "Guess a number between 1 and 64 (inclusive)."

COUNT=6; #I create a counter since the player is only allowed 6 tries

while [ $COUNT -gt 0 ]; #As long as count is bigger than 0 we do the following code
do 
	read guess
	if [ $guess -gt $Number ]; #This is the case if the guess is greater than the actual number
	then						
		let COUNT=COUNT-1	   #We decrement count as the player has used a try
		if [ $COUNT -eq  0 ];  #If count = 0 then the player has used all 6 tries and they lose
		then
			echo "Too big."
			echo "You lost!"
			exit #We exit as the game is over
		fi
			echo "Too big." #We say these 2 statements in the case where player still has tries left
			echo "Try again"
	
	elif [ $guess -lt $Number ]; #This is the case if the guess is smaller than the actual number
	then
		let COUNT=COUNT-1		 #We decrement count as the player has used a try
		if [ $COUNT -eq  0 ];	 #If count = 0 then the player has used all 6 tries and they lose
		then
			echo "Too small."
			echo "You lost!"
			exit #We exit as the game is over
		fi
			echo "Too small."	#We say these 2 statements in the case where player still has tries left
			echo "Try again."
	
	elif [ $guess -eq $Number ]; #If the guess is equal to the actual number, then the player wins and the game stops
	then
		echo "You won!"
		exit #We exit as the game is over since player has won
	fi
done
