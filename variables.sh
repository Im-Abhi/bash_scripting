#!/bin/bash

myname="test"
myage="20"

echo "Hello, my name is $myname."
echo "I'm $myage years old."

# $(...)   this creates a subshell using which we can get the result of a command
now=$(date)
echo "System date, time is: "
echo $now

echo "Your username is $USER"
