#!/usr/bin/env bash

# Checks if your shell handle the ; command separator

shell="the date of the operative system"
hsh="the date of the operative system"

command="uname -a"

# clean up
rm -f $shell
rm -f $hsh

# create a pseudo random file
touch $shell
touch $hsh

# send commands
echo "$command" | ./hsh > $shell 2> /dev/null &
echo "$command" | /bin/sh > $hsh 2> /dev/null &

# wait a little bit -> HOMEWORK
$SLEEP $SLEEPSECONDS

# check the result
nmatch=`grep -c "$shell" "$hsh"`
if [ $nmatch -eq 0 ]; then
           echo "OK"
else
           echo "Failed"
fi

# clean up
rm -f $shell
rm -f $hsh
pkill hsh

