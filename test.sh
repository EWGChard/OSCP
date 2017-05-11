#!/bin/bash
echo "Welcome to Chards Ping Sweeper!"  
sleep 5s                                
echo "Please enter the Network address you would like to sweep: \n"
read "Network: " netSweep
echo "Sweeping..."
for x in 'seq 1 254'; do
ping -c 1 netSweep.$x | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//'
done
