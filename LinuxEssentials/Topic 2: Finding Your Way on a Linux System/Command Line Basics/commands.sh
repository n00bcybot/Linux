# All these commands do the same thing

ls -al
ls -a -l
ls --all --format=long

# External and internal (built in the shell) commands

$ type echo
echo is a shell builtin

$ type man
man is /usr/bin/man

# --------------------------------------------------------------------------------------------
# Quoting
# --------------------------------------------------------------------------------------------

# In this example, using the touch command and string variable with space will actually create 2 separate files
TWOWORDS="two words"
touch $TWOWORDS

# Using the same variable inside double quotes creates a single file called "two words".The 3 special characters are interpreted as such ($, \ and `). Spaces in names are not best practice.
touch "$TWOWORDS"

# Another example - the value of the variable is still read inside the double quotes
$ echo I am $USER
I am tom
$ echo "I am $USER"
I am tom

# Inside single quotes it produses literal string - special characters are not recognized
touch '$TWOWORDS'

# --------------------------------------------------------------------------------------------
# Escape Characters
# --------------------------------------------------------------------------------------------

# This command will print the name of the variable and not it's value. The backslash escapes the $ special character

$ echo \$USER
$USER

# Creating multiple files with array 

$ touch game{1..5}
$ ls
game1 game2 game3 game4 game5

# Removing the files. The question mark acts as a wild card
$ rm game?
$ ls


# --------------------------------------------------------------------------------------------
# Variables
# --------------------------------------------------------------------------------------------

# Local variables - available to the current shell session only
# Environment variables - available both in the local session and subprocesses spawned from it. 

$ greeting=hello

# There must be no space between "=" and the variable name and value. To print the value of a variable, use $ in front of it.
# To clear/remove the value of a variable, use unset
$ unset greeting

# Global variable
# To make a variable available to subprocesses, turn it from a local into an environment variable. This is done by the command export. Make sure to not use $ in this case
$ export greeting

# Creating global variable and instatiating it in the same time
$ export greeting=hello


# Print all environment variables 
$ env

# Print $PATH variable
$ echo $PATH

# Append a new directory to the $PATH variable
$ PATH=$PATH:new_directory


#! The order of elements in PATH also defines the lookup order


