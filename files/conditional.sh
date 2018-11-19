#! /bin/bash

# note the flags for comparison can be found here https://www.tldp.org/LDP/abs/html/comparison-ops.html

count=10

# this says if count == 10 
if [ $count -eq 10 ]
then
  echo 'I am the coolest' >> /home/myfile.txt
fi 


# alternatively you can use arrow syntax with double braces (( ))
if (( "$count" > 9 ))
then
echo "This Worked!"
fi


# For string comparisons
word=abc
if [ $word == "abc" ]
then
echo word is $word
else
echo word is not abc
fi