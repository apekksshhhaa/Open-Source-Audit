#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Apeksha Saboo[24BAI10636]
# Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "==== Directory Audit Report ===="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extracting permissions, owner, and group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Extracting human-readable size
        SIZE=$(du -sh "$DIR" 2>/dev/null | awk '{print $1}')
        echo "$DIR => Permissions & Owner: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done

echo "--- Git Config Audit ---"
# TODO: Check if Git's config file/directory exists
GIT_CONFIG="$HOME/.gitconfig"

if [ -e "$GIT_CONFIG" ]; then
    GIT_PERMS=$(ls -ld "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    echo "Git config ($GIT_CONFIG) exists => Permissions & Owner: $GIT_PERMS"
else
    echo "Git config ($GIT_CONFIG) does not exist yet."
    echo "(Note: Git creates this file the first time you set a global config)."
fi
echo "================================"