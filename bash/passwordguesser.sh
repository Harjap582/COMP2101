#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

echo "####task1##########"

prompt="please try to guess the password: "
read -p "$prompt" TestString
referenceString="password"
 echo "#######task2 and task 3##########"
if [ $TestString = $referenceString ];then
  echo "Correct!"
  else
    echo "Incorrect."
    echo " you left 4 tries"
  read -p "$prompt" TestString
    if [ $TestString = $referenceString ];then
    echo "Correct!"
    else
    echo "Incorrect."
    echo " you left 3 tries"
    read -p "$prompt" TestString
      if [ $TestString = $referenceString ];then
      echo "Correct!"
      else
      echo "Incorrect."
      echo " you left 2 tries"
      read -p "$prompt" TestString
        if [ $TestString = $referenceString ];then
        echo "Correct"
        else
        echo "Incorrect."
        echo " you left 1tries"
        read -p "$prompt" TestString
          if [ $TestString = $referenceString ];then
          echo "Correct!"
          else
          echo "Incorrect."
          echo " Sorry, you are not the right person"
        fi
      fi
    fi
  fi
fi
