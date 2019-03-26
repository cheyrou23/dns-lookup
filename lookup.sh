#!/bin/bash
# Put all the domain names in domains.txt, one per line
# then run in the terminal: bash lookup.sh
# this will print each domain and domain owner in the terminal as it looks it up
# The result csv will contains the domain and domain owner separated by a colon

# Give each column the relevant header titles
echo "Domain Owner:Domain Name" > domains.csv

while read domain
do
# Use the line below to extract any information from whois
# Remove or change --host=whois.ja.net to use a different whois server
ns=`whois --host=whois.ja.net $domain | grep -A1 "Domain Owner" | tr '\n' ':' | cut -f 2`

# Prints the domain owner and domain name in the terminal
echo "$ns$domain"
   
# Prints the domain owner and domain name into the CSV file
echo "$ns$domain" >> domains.csv

# Waits 25 seconds so as not to hit the rate limiter on the whois server
sleep 25

# Defines the text file from which to read domain names
done < domains.txt
