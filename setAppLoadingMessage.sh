#!/bin/bash
echo "Please do not log in yet. Applications are being installed in the background.">>PolicyBanner.txt
mv PolicyBanner.txt /Library/Security/
killall loginwindow
