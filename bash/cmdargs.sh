#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
# loop through the command line arguments
while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the arguments array"

# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array

echo "task1"
vmode=1
dmode=0
case $1 in
  -h )
      echo "-h is added for help"
      echo "###########processing###############"
      echo "-v option is for verbose"
      echo "-d option is for debug mode and add any number withn it"
      ;;
  -v )
      echo "-v is added for verbose mode"
      echo "############verbose############"
      ;;

  -d )
     case $2 in
       [0-11] )
       dmode=$2
             echo "-d o[tion is added with number"
             shift
             ;;
   *)
      echo "please enter input in between [0-11]"
      esac
      shift

    ;;
esac
  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label

if [ "$vmode" == "1" ]; then
  echo "vmode is on"
else
  echo "vmode is off"
fi
if [ "$dmode" == "6" ]; then
  echo "dmode is with level $dmode"
else
  echo "dmode is off"
fi
