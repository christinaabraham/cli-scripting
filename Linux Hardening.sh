echo EXECUTING SHELL SCRIPT...

echo CHECKING FOR UPDATES...
sudo apt-get update
sudo apt-get upgrade

echo DISPLAYING INSTALLED PACKAGES...
dpkg -l

echo DISPLAYING RUNNING TASKS AND PROGRAMS
lsof –i
netstat -an
ps -ef

echo CHECKING USER ACCOUNTS...
cat /etc/passwd
cat /etc/group

echo SETTING AUDIT POLICIES
apt‐get install auditd
auditctl –e 1
gedit/etc/audit/auditd.conf
