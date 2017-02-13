# ButterTrace 
A small script that uses ARP spoofing in order to sniff all network traffic originating from the target device. This script essentially acts as a wrapper that brings arpspoof and tcpdump together, asks you for the IP addresses required in order to perform the attack then output a logfile based on traffic received from the target system.

This script essentially allows you to perform a Man-in-the-Middle attack on the target machine. Only use this script on systems you have permission to run these types of actions on. Do NOT use this script for illegal purposes. This script was designed for education and penetration testing purposes. It is a very good tool for monitoring what a particular system is doing.

Admin priviliges are required to run this script.

This script depends on the commands 'arpspoof' and 'tcpdump' executing their respective applications, this occurs as default with most pentesting distributions.

When this script closes, it will terminate all spoofing and packet monitoring. If you require this script to continue running in the background, please use a tool such as 'screen'.

IMPORTANT! It is highly recommended that IP Forwarding is enabled on the system running this script, otherwise the packets from the target system will not hit its destination - e.g. target system tries to visit a website, it fails because the packets are dying when they hit this system. IP Forwarding enabled will allow traffic to pass to its intended destination once its hit the system.

On most Unix/Linux systems you can enable IP Forwarding by amending the below file: 
/proc/sys/net/ipv4/ip_forward - setting it from 0 to 1 will enable forwarding. It is YOUR responsiblity to ensure it is safe to enable IP forwarding on your system.

Requirements
=============
 - arpspoof
 - tcpdump
 - grep
 - IP Forwarding enabled

INSTRUCTIONS FOR USE: Run the script - sudo ./buttertrace.sh then answer the questions it asks you. All network traffic from the target machine will be logged in the log file 'tcpdump-$target.txt' 
