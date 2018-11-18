# Shell Scripting tutorial 1 

+ Shell scripts are interperated, not compiled. 
+ Different types of shells, this tutorial will cover bash 

### This command will display all shells available on your system
```
cat /etc/shells
```

### Remember to make your shell scripts executable by whomever should execute it
```
chmod +x ./helloworld.sh

or

chmod 750 ./helloworld.sh

```

### Note that if you are developing your script on a linux system remember to change your line endings to unix style (LF)
+ https://stackoverflow.com/questions/2920416/configure-bin-shm-bad-interpreter


# Shell Scripting tutorial 2 (Comments & Variables)
+ '#' symbols are used for comments
+  Variables store information. two types
  + System variables - variables defined by the OS (ex: $BASH, $USER, $HOME)
  + User variables - maintained by the user(USER_NAME=cool, echo $USER_NAME)