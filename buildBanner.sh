#!/bin/bash
appname=$4
rm -rf /Library/Security/PolicyBanner.rtfd
rm -rf /Library/Security/PolicyBanner.txt
cd /Users/Shared/fakesplash || exit
cp -r template.rtfd PolicyBanner.rtfd
cp "$appname".png PolicyBanner.rtfd/
cd PolicyBanner.rtfd || exit
LC_ALL=c sed -i "" "s/APPLICATION/$appname/" ./TXT.rtf
cd ..
mv ./PolicyBanner.rtfd /Library/Security/
killall loginwindow
exit 0
