# #!/user/bin/bash
# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Zachary Derrick                    
# Date of latest revision:  8/10/22    
# Purpose: Create a script that asks a user to type a domain, then displays information about the typed domain.
#Operations that must be used include "whois" "dig" "host" "nslookup"

#text format 
UWhite='\033[4;37m'       # White Underline
Color_Off='\033[0m'       # Reset

#define functions
function dfun {

    whois $ipurl >> domaininformation.txt
    dig $ipurl >> domaininformation.txt
    host $ipurl >> domaininformation.txt
    nslookup $ipurl >> domaininformation.txt
    
    code domaininformation.txt
}

#main
echo -e "Enter the URL or IP Address of the domain you'd like information about. ${UWhite}Do not include the 'www'${Color_Off}:" && read ipurl
#user enters a url to get information on

dfun
#end