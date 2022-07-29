#!/usr/bin/bash

# Script:                       Ops 201 Class 04 Ops Challenge Function
# Author:                       Zachary Derrick
# Date of latest revision:      7/27/2022
# Purpose:                      Write a script that:
#                               Creates four directories: dir1, dir2, dir3, dir4 *I changed them to beans1...*
#                               Put the names of the four directories in an array
#                               References the array variable to create a new .txt file in each directory

#main

# Create four directories using the script.
# I found that you can use the curly brackets to make multiple directories in Bash. So instead of typing out each directory name I just used {1..4} 
# I found this example here https://askubuntu.com/questions/731721/is-there-a-way-to-create-multiple-directories-at-once-with-mkdir
# This code was written so that if I wanted to change the names of the directories and files, I could do that here, but keep the function untouched.
# Load each directory path into an array.
dirs=(beans{1..4})
filename="yum"
# create a new .txt file within each directory by referencing the directory with array indices, not the literal directory path.
#Below I use a "For Loop" which allows code to be repeatedly executed.
for i in ${dirs[@]}
do
    mkdir "$i" 
    touch "$i/$filename"
done
