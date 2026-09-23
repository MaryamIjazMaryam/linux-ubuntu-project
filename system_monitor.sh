#!/bin/bash
echo "=============================="
echo "Linux System Monitoring Tool"
echo "=============================="

echo ""
echo "System Uptime:"
uptime

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "CPU Load:"
top -bn1 | grep "load average"

echo ""
echo "Top 5 CPU Consuming Processes:"
ps -eo pid,pid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

echo ""
echo "Logged in Users:"
who

echo ""
echo "=============================="
echo "End of Report"



