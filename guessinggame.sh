#!/usr/bin/env bash
## guessinggame --> guess the number of files in the current directory

function check_number {
# $1 is number_files; $2 is $guess
  if [[ $1 -lt $2 ]]
  then
    echo the number of files is smaller than your guess. Guess again
  elif [[ $1 -gt $2 ]]
  then
    echo the number of files is higher than your guess. Guess again
  fi
}

number_files=$(ls -l | egrep ^- | wc -l)
guess=-1

echo Guess the number of files in the current directory
while [[ guess -ne $number_files ]]
do
  read guess
  if [[ ! $guess =~ ^[0-9]+$ ]]
  then
    echo "Please enter an integer next time"
  else
    check_number $number_files $guess
  fi
done
echo CONGRATULATIONS: you guessed the correct number of files
