#!/bin/bash
# Script 1: System Identity Report
# Author: Apeksha Saboo[24BAI10636]
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Your Name Here"
SOFTWARE_CHOICE="Git"

# System info (using command substitution to get real data)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

# Completing the required TODOs: Distro name, home directory, date, and license
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d '"' -f 2)
HOME_DIR=$HOME
CURRENT_DATE=$(date)
OS_LICENSE="GNU General Public License (GPL)"

# --- Display ---
echo "==== Open Source Audit ===="
echo "Student  : $STUDENT_NAME"
echo "Software : $SOFTWARE_CHOICE"
echo "==========================="
echo "OS Distro: $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date/Time: $CURRENT_DATE"
echo "License  : This operating system is covered by the $OS_LICENSE"