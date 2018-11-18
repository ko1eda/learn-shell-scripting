#! /bin/bash
read -p "Enter name:" USER_NAME #this stores the next enetered line in a variables. -p flag enters input on same line 
echo "Name:" $USER_NAME

read -sp "Enter password:" USER_PASSWORD # -s flag means that the input will be silent, so the input will not be shown
echo $USER_PASSWORD

# to read an array of items
echo "Enter Names: "
read -a NAMES
echo "Names: ${NAMES[0]}, ${NAMES[1]} "

# note that with no variables the reply is stored in the default variable $REPLY
echo "Default input:"
read 
echo $REPLY


echo "Enter favorite foods:"
read food1 food2 food3 # it will now read up to the next 3 workds ex pizza pasta salad
echo "Foods: $food1 $food2 $food3"

