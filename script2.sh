#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Apeksha Saboo[24BAI10636]
# Course: Open Source Software

PACKAGE="git"

echo "==== FOSS Package Inspector ===="

# Check if the package is installed using dpkg (for Ubuntu/Debian)
if dpkg-query -W -f='${Status}' "$PACKAGE" 2>/dev/null | grep -q "ok installed"; then
    echo "Status: $PACKAGE is installed."
    echo "--- Package Details ---"
    # Display the version and description of the package
    dpkg -s "$PACKAGE" | grep -E '^Version:|^Description:' | head -n 2
else
    echo "Status: $PACKAGE is NOT installed."
fi

echo "--- Philosophy Note ---"
# Case statement that prints a one-line philosophy note about the package
case $PACKAGE in
    git) 
        echo "Git: The tool Linus built when proprietary failed him." 
        ;;
    apache2 | httpd) 
        echo "Apache: The web server that built the open internet." 
        ;;
    mysql-server | mysql) 
        echo "MySQL: Open source at the heart of millions of apps." 
        ;;
    firefox) 
        echo "Firefox: A nonprofit fighting for an open web." 
        ;;
    *) 
        echo "An excellent open-source project." 
        ;;
esac
echo "================================"