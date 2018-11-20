# Notes for learning shell scripting


## Shell Scripting tutorial 1 

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
### Note that if you are developing your script on a windows system remember to change your line endings to unix style (LF)
+ https://stackoverflow.com/questions/2920416/configure-bin-shm-bad-interpreter


## Shell Scripting tutorial 2 (Comments & Variables)
+ '#' symbols are used for comments
+  Variables store information. two types
  + System variables - variables defined by the OS (ex: $BASH, $USER, $HOME)
  + User variables - maintained by the user(USER_NAME=cool, echo $USER_NAME)


## Shell Scripting tutorial 3 (Reading user-input)
+ see ./files/user-input.sh


## Shell Scripting tutorial 4 (Passing arguments to scripts)
https://www.youtube.com/watch?v=BjBBfmDRakg&index=4&list=PLS1QulWo1RIYmaxcEqw5JhK3b-6rgdWO_


## Shell Scripting tutorial 5 (Conditionals)
+ you can use these comparison operator flags https://www.tldp.org/LDP/abs/html/comparison-ops.html


## Detour (SED tutorial)
+ http://www.grymoire.com/Unix/Sed.html
+ Ubuntu docker image doesn't come with man pages installed https://github.com/tianon/docker-brew-ubuntu-core/issues/122


## Shell Scripting tutorial 6 (Testing for file types)
+ see test-file.sh
+ list of file test operators https://www.tldp.org/LDP/abs/html/fto.html
+ Character special files vs block special files
  + Character special files consist of text -c flag for comparisons
  + Block special files consist of binaries, vidoes, image files, etc -b flag 