#!/usr/bin/bash

# Script:                       Ops 201 Class 03 Ops Challenge Function
# Author:                       Zachary Derrick
# Date of latest revision:      7/27/2022
# Purpose:                      Write a script that prints the login history of users on this computer.

#main
# I'm creating a function for Login_History
function Login_History {
         sudo last
}

#This calls Login_History
Login_History

#This will add text asking a question 
Question="Anything Sketchy?"
#Here I added a $ to use the variable $
echo $Question

# The yes/no part of the code I found from https://stackoverflow.com/a/226724
# This code gives the option to answer the question I posed above.
# select yn is built into Bash's "select" command.
# case and esac contain this part of the command.
select yn in "Yes" "No" ; do
    case $yn in
        Yes ) echo "LULZ U'V BN H@XX'D"; break;;
        No ) echo "(ɔ◔‿◔)ɔ ♥"; exit;;
        
    esac
        
done

#end