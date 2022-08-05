#!/user/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Zachary Derrick                    
# Date of latest revision:  8/1/22    
# Purpose: Create a script that detects if a file or directory exists, 
# then creates it if it does not exist.

#main

  echo "Please Select the Hardware You'd Like More Information About"

# I turned a previous "select yn in" loop code into a selection tool for the System 
# information that the user is looking for lshw is the list system hardware command
# and -A Print NUM lines of trailing context after matching lines.
  select yn in "Computer Name" "CPU" "RAM" "Display Adapter" "Network Adapter" ; do
        case $yn in
            "Computer Name" ) echo "Your computer name is:" && sudo lshw | grep -E '' | head -n1; break;;
            CPU ) sudo lshw | grep -A 6 '*-cpu'; break;;
            RAM ) sudo lshw | grep -A 3 '*-memory'; break;;
            "Display Adapter" ) sudo lshw | grep -A 12 '*-display'; break;;     
            "Network Adapter" ) sudo lshw | grep -A 15 '*-network'; break;;
        esac       
    done
# sudo lshw | grep ubuntudev    
# sudo lshw -c system | grep -E 'product:'; break;;
# echo "The Computer Name is: ubuntudev"
echo "Your query was completed on" `date`
#end
