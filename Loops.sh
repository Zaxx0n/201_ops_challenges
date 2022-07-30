#!/user/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Zachary Derrick                    
# Date of latest revision:  7/29/22    
# Purpose: Write a script that displays running processes, asks the user for a PID, then kills the process with that PID.
#          Use a loop in your script.

#used ping 8.8.8.8 to create a safe process to kill
#\e[1mbold\e[0m
#this is the prompt that asks the user to imput a process or PID to kill
# I chose 'ctrl+C as the exit command, because I don't at this moment know how to make imput case insensitve
prompt="     ☠︎ \e[31mYOU HAVE LAUNCED PID SUPER KILLER\e[0m☠︎\nEnter PID to kill a process or press 'ctrl+C' to exit."
# there is no PID 0
PID=0

until [ $PID == "exit" ]
do
# ps -aux  will show processes running
    ps aux
# here echo grabs the string above asking the user to either enter a PID to kill or exit the program    
    echo -e $prompt
# read allows for imput from the user.  Here it is asking for a PID   
    read PID
# this sudo command "kill -9" is used to kill processes    
    sudo kill -9 $PID
    
done
# Main

# End