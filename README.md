## ButterTrace

A small Bash script that uses ARP spoofing in order to sniff all network traffic originating from the target device. This script acts as a wrapper that brings arpspoof and tcpdump together, it asks you for the IP addresses required in order to perform the attack then outputs a logfile based on traffic received from the target system. This script essentially allows you to perform a Man-in-the-Middle attack on the target machine.

Admin privileges are required to run this script. This script also depends on the commands 'arpspoof' and 'tcpdump' executing their respective applications, this occurs as default with most pentesting distributions.

## Wiki:
* [Instructions for use](https://github.com/apacketofsweets/ButterTrace/wiki/Instructions-for-use)
* [Requirements](https://github.com/apacketofsweets/ButterTrace/wiki/Requirements)
* [Disclaimer](https://github.com/apacketofsweets/ButterTrace/wiki/Disclaimer)
