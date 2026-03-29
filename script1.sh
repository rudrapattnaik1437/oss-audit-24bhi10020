#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Rudranarayan Pattnaik"
SOFTWARE_CHOICE="Linux"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

# Added distro name + license line
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

echo "=============================="
echo " Open Source Audit"
echo "=============================="
echo "Student: $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "Distro: $DISTRO"
echo "Kernel: $KERNEL"
echo "User: $USER_NAME"
echo "Uptime: $UPTIME"
echo "Date: $DATE"
echo "License: GPL/MIT (based on OS)"