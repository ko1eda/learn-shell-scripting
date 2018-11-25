#! /bin/bash

AGE=30

# this says (25 < age < 30) note that 25 and 30 are not inclusive (-le and -ge for less than equal to or greater than equal to)
# OR operator uses double pipe syntax [ "$AGE" -gt 25 ] || [ "$AGE" -lt 30 ]
if [ "$AGE" -gt 25 ] && [ "$AGE" -lt 30 ]
then
  echo "${AGE} is still not thaaaaat old"
else
  echo "${AGE} is older"
fi