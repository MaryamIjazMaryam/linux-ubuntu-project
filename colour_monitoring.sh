#!/bin/bash

# ==========================================
# Linux System Monitoring Tool
# ==========================================

# Color Codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # No Color

# ==========================================
# Header
# ==========================================

echo -e "${MAGENTA}==========================================${NC}"
echo -e " 🚀 Linux System Monitoring Tool"
echo -e "${MAGENTA}==========================================${NC}"

echo ""

# ==========================================
# Current Date & Time
# ==========================================

echo -e "${CYAN}📅 Current Date & Time:${NC}"
date

echo ""

# ==========================================
# Calendar
# ==========================================

echo -e "${CYAN}🗓️ Calendar:${NC}"
cal

echo ""

# ==========================================
# System Uptime
# ==========================================

echo -e "${GREEN}⏱️ System Uptime:${NC}"
uptime

echo ""

# ==========================================
# Memory Usage
# ==========================================

echo -e "${GREEN}💾 Memory Usage:${NC}"
free -h

echo ""

# ==========================================
# Disk Usage
# ==========================================

echo -e "${YELLOW}💿 Disk Usage:${NC}"
df -h

echo ""

# ==========================================
# CPU Load
# ==========================================

echo -e "${BLUE}⚙️ CPU Load:${NC}"
top -bn1 | grep "load average"

echo ""

# ==========================================
# Top 5 CPU Consuming Processes
# ==========================================

echo -e "${RED}🔥 Top 5 CPU Consuming Processes:${NC}"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

echo ""

# ==========================================
# Logged in Users
# ==========================================

echo -e "${CYAN}👤 Logged in Users:${NC}"
who

echo ""

# ==========================================
# End of Report
# ==========================================

echo -e "${MAGENTA}==========================================${NC}"
echo -e "          ✅ End of Report"
echo -e "${MAGENTA}==========================================${NC}"


