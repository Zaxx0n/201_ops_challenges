#!/usr/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Zachary Derrick                    
# Date of latest revision:  2023/5/6    
# Purpose:  # A script that lists hardware of the PC. I turned a previous "select yn in" loop code into a selection tool for the System 
            # information that the user is looking for lshw is the list system hardware command
            # and -A Print NUM lines of trailing context after matching lines.


# declare variables
prompt="\nPlease select the hardware you'd like more information about:"
run_menu=0

# main
while [ $run_menu -eq 0 ]
do
  echo -e $prompt
  select yn in "Computer Name" "CPU" "RAM" "Display Adapter" "Network Adapter" "Exit Program" ; do
        case $yn in
            "Computer Name" ) echo "Your computer name is:" && sudo lshw | grep -E '' | head -n1; break;;
            CPU ) sudo lshw | grep -A 6 '*-cpu'; break;;
            RAM ) sudo lshw | grep -A 3 '*-memory'; break;;
            "Display Adapter" ) sudo lshw | grep -A 12 '*-display'; break;;     
            "Network Adapter" ) sudo lshw | grep -A 15 '*-network'; break;;
            "Exit Program" ) echo "Goodbye" && echo "Your query was completed on" `date` && exit 0
        esac       
  done
done        

#end
