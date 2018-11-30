echo EXECUTING SHELL SCRIPT...

echo CHECKING FOR UPDATES...
sudo apt-get update
sudo apt-get upgrade

echo DISPLAYING INSTALLED PACKAGES...
dpkg -l

echo DISPLAYING RUNNING TASKS & PROGRAMS
lsof –i
netstat -an
ps -ef

echo CHECKING USER ACCOUNTS...
cat /etc/passwd
cat /etc/group
