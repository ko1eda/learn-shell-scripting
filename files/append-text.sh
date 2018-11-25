#! /bin/bash

echo -e "Enter the name of the file you'd like to edit: \c"
read FILE_NAME

# If the file entered exists then write to the end of it, otherwise echo No file found 
if [ -f $FILE_NAME ]
then
  if [ -w $FILE_NAME ] # check if the file is writeable
  then
    echo "To quit out of the editor use ctrl + d"
    cat >> $FILE_NAME # then append to the end of the file using the cat editor
  else
    echo "${FILE_NAME} does not have write permission"
  fi
else
  echo "${FILE_NAME} not found..."
fi