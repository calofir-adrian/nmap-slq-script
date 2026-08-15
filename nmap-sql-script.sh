#! /bin/bash

# This script is designed to finds hosts with MySQL installed
# and to hide it through proxies using tor.

echo "[+] Starting Tor services..."
sudo systemctl start tor
sleep 3

# Prompt for network target
echo -n "Enter the IP or Domain (e.g., 192.168.1.0): "
read target
proxychains4 nmap -sT $target/24 -p 3306 > MySQLscan

# Cleanup services
clear
cat MySQLscan
echo "[+] Stopping Tor services..."
sudo systemctl stop tor
sleep 2
echo "
The scan will be saved in folder as 'MySQLscan'.
"
sleep 2

# Author Credits
echo "------------------------------------------------------
 Author              Calofir Adrian               
 Github              https://github.com/calofir-adrian 
------------------------------------------------------"
