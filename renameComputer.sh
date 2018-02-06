#!/bin/bash
ComputerName=`/usr/bin/osascript <<EOT
tell application "System Events"
    activate
    display dialog "Enter Computer Name" default answer ""
    set ComputerName to (text returned of result)
end tell
EOT`

sudo scutil --set HostName "$ComputerName"
sudo scutil --set ComputerName "$ComputerName"
jamf recon
