#!/bin/bash
# Script 2: Package Inspector

PACKAGE="linux-image-$(uname -r)"

if dpkg -l | grep -q "$PACKAGE" || rpm -q "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed"

    if command -v dpkg &>/dev/null; then
        dpkg -l | grep "$PACKAGE"
    else
        rpm -qi "$PACKAGE" | grep -E "Version|License|Summary"
    fi
else
    echo "$PACKAGE is NOT installed"
fi

case $PACKAGE in
    git)
        echo "Git: version control system for tracking code history"
        ;;
    firefox)
        echo "Firefox: open-source web browser focused on privacy"
        ;;
    apache2|httpd)
        echo "Apache: web server powering the open internet"
        ;;
    *)
        echo "No description available"
        ;;
esac