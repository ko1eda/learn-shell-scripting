#! /bin/bash

# switch to home directory and create a file.txt
cd /home/ && touch file.txt

# echo current directory (note that the script will execute in the context of /home/ directory even though it was run in /home/files)
echo "This script is running in the ${PWD} directory" 

# -e flag tells the echo command to use backslash escape characters
# \c means to keep the cursor on the same line
echo -e "Enter the name of the file: \c"
read FILE_NAME


# you can check read write and execute permissions of a file -r -w -x 
if [ -r $FILE_NAME ]
then
echo "File is readable"
fi 

# -e is existence flag, check if the file exists 
# file test operators https://www.tldp.org/LDP/abs/html/fto.html
if [ -e $FILE_NAME ]
then
  echo $FILE_NAME found!
  rm file.txt 
  echo $FILE_NAME was removed!
else
  echo $FILE_NAME not found
fi

# just to demonstrate that the working directory for the script is /home/
echo "This script is running in the ${PWD} directory" 

# Get the second argument after the -d flag so ./test-files.sh -d /path/of/directory/to/test
DIR_PATH=$2

# change to root directory so that a new directory can be created from the root of file system
cd /
echo "The script is now running in the ${PWD} directory"
echo "The script will now search for a directory the -d flag was used"

# -z checks if the variable is an empty string, if it is no args were passed to the script
# If a directory was passed though check to see if it exists and if not create it.
if [ -z $DIR_PATH ]
then
  echo "A directory was not passed to this script"
elif [ -d $DIR_PATH ]
then
  echo "The directory ${DIR_PATH} exists"
else
  echo "The directory you entered ${DIR_PATH} does not exist..."
  sleep 1

  echo "Creating directory ${DIR_PATH}"
  mkdir ${DIR_PATH}
  sleep 1

  echo "Directory created!"
fi 
