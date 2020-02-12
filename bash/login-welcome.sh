#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
USER="meet"
hostname=$(hostname)



CURRENTWEEKDAY=`date +"%A"`
CURRENTTIME=`date +"%T"`

if [ "$CURRENTWEEKDAY" == "Monday" ]; then
  title=" Monday is marvelous "
elif [ "$CURRENTWEEKDAY" == "Tuesday" ]; then
  title=" Tuesday is Terrific "
elif [ "$CURRENTWEEKDAY" == "Wednesday" ]; then
  title=" Wednesday is wonderfull "
elif [ "$CURRENTWEEKDAY" == "Thursday" ]; then
  title=" Thursday is Awesome "
elif [ "$CURRENTWEEKDAY" == "Friday" ]; then
  title=" Thank God its Friday "
elif [ "$CURRENTWEEKDAY" == "Saturday" ]; then
  title=" Saturday, Please dont go! "
elif [ "$CURRENTWEEKDAY" == "Sunday" ]; then
  title=" Sunday is lovely "
fi



###############
# Main        #
###############

display=$(cat <<EOF

Welcome to planet $hostname, "$title $USER!"

It is $CURRENTWEEKDAY at $CURRENTTIME

EOF
)

cat <<EOF
$(cowsay $display)
EOF
