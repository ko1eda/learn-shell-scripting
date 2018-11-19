#! /bin/bash

# arguments are represented by $(1,x)
echo $1 $2 $3

# arugment $0 is the name of your shell script
echo "${0} this is the name of your script"

# $@ this stores an array of all the arguments passed in
# the variable name $args is arbitraty it could be stuff=("$@")
args=("$@")

# args are passed in array form at index 0,x 
echo ${args[1]} # this would be the second argument passed to the script

# this will print all the arugments passed to the script
echo $@

# This will print the number of arguents passed to the bash script
echo $# 