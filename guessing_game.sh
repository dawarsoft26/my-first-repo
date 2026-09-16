#!/bin/bash

# secret_number=7
secret_number=$(( (RANDOM % 10) + 1 ))
guess=0
echo -n "$secret_number"
echo "==Welcome to the Guessing Game =="
echo "I'm thinking of a number between 1 to 10."


while [ $guess -ne $secret_number ]
do
   echo -n "Enter Your Guess :"
   read guess
  
   if [ $guess -lt $secret_number ]; then
          echo "Too low, Try Again."
   elif [ $guess -gt $secret_number ]; then
          echo "Too high, Try Again."
   else
          echo "Congratulations, You Guessed it!"
   fi
done 
