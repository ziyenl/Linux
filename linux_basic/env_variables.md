# Environment/ System Variables
Environment is a set of variables that are used in the computing environment configuration. There are **USER DEFINED** variables and **SYSTEM DEFINED** variables.

- `cd ~ `: switches from current directory to home directory ($HOME). This is similar to just `cd`
- `echo`, `set`, `env`: ways to list environment variables
-`VARIABLE=$VARIABLE`: sets a variable to the current session
- `export VARIABLE=$VARIABLE`: sets a variable across all shell sessions
- add to bash configuration scripts .bashrc or .bash_profile: to survive reboot

## User Defined Variables
This is similar approach as to above. The user defined variable should not begin with a number and it is recommended for the variable to be in capital letters.


## Globbling
This involves usage of `*` or `?`. * represents 0...many unknown characters. ? represents a single unknown character.
![alt text](https://github.com/ziyenl/Linux/blob/master/linux/images/globbling.png "Globbling Example")

## Quotation
Double quote will substitute the value of variables and commands, whereas single quote will preserve the literal meaning of each character in a string.
Backslash will allow displaying of special character in double quotation.
![alt text](https://github.com/ziyenl/Linux/blob/master/linux/images/quote.png "Quote Example")
