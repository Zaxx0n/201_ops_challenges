#!/user/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Zachary Derrick                    
# Date of latest revision:  8/1/22    
# Purpose: Create a script that detects if a file or directory exists, 
# then creates it if it does not exist.

#main
 useless=(This Array Is Useless RIP)
#  file="useless.txt"
    echo "Welcome to Junk File Creator"
#   printf acts like echo but has the potential to be more functional 
    printf "\n Please enter a file you'd like to find: "
    read namefile
    printf "\n Please enter the absolute path to see if it exists on this computer: "
    read filepath

if find $filepath -name $namefile -print -quit |
   grep -q '^'; then
  echo "The file exists"
else
  echo "Your file does not exist"
  echo "Would you like to create it?"
  select yn in "Yes" "No" ;
    do
        case $yn in
# by selecting yes, the script will create a file with the name selected from what was entered and stored in $namefile
            Yes ) echo "Your file has been created" && touch /home/zaxxon/uselessfiles/$namefile.txt; break;;
# the Japanese text means "I understand.  I just wanted to try bash in a different language"      
            No ) echo "分かりました"; exit;;
        esac       
           
    done
# This echo command to the Array was even more useless in an earlier version of the code.  
    echo "${useless[*]}"
   
fi

#end