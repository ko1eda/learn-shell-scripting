#! /bin/bash

num1=20
num2=5

# If you do not use this syntax $(( )) then echo will print out the text as is and not evaluate the variables
echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 )) # modulus 

echo "Now with expr syntax"

# alternatively you can use this syntax
echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 ) # note you have to escape this character (*) while using expr syntax
echo $(expr $num1 / $num2 )
echo $(expr $num1 % $num2 )