@echo off
title Windows Hardening

REM Enables Windows Firewall for all profiles.
echo ENABLING FIREWALL...
netsh advfirewall set domainprofile state on
netsh advfirewall set domainprofile state on 
netsh advfirewall set privateprofile state on

REM Checks for media files and malware.
echo DELETING MEDIA...
cd C:\
del /S *.cpl
del /S *.dll
del /S *.exe
del /S *.png
del /S *.mp3
del /S *.mp4
del /S *.msc
del /S *.msi

// misc. commands: https://www.acpsd.net/site/handlers/filedownload.ashx?moduleinstanceid=53976&dataid=56014&FileName=00%20-%20CyberPatriot%20Notes%20v4%20-%202013-11-09.pdf
// server hardening: https://www.upguard.com/blog/the-windows-server-hardening-checklist
// windows manual hardening: https://www.hardenwindows10forsecurity.com/

