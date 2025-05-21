# Lesson 2
# --------------------------------------------------------------------------------------------

# Variables
# --------------------------------------------------------------------------------------------

# Local variables - available only to the current session
# Environment variables - available both in a specific shell session and in sub processes spawned from that shell session

# declare variable
greeting=hello

# display its content
echo $greeting

# remove variable
unset $greeting

# To make a variable available to subprocesses, turn it from a local into an environment variable
# make sure to not use $ when running export as you want to pass the name of the variable instead of its contents
greeting=hello
export greeting

# Another way to use environment variables is to use them in front of commands. We can test this with the environment
# variable TZ which holds the timezone. This variable is used by the command date to determine which timezone’s
# time to display:

TZ=EST date
#Thu 31 Jan 10:07:35 EST 2019
TZ=GMT date
# Thu 31 Jan 15:07:35 GMT 2019

# The PATH Variable
# --------------------------------------------------------------------------------------------
echo $PATH

# append new directory (append string - :)
PATH=$PATH:new_directory
# --------------------------------------------------------------------------------------------

# fine path to program
which nano
/usr/bin/nano

# assign command output to a variable

variable=$(command_output)
