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

echo SETTING AUDIT POLICIES
REM test
Install the auditing program by typing apt‐get install auditd
2. .Enable audits by typing auditctl –e 1
3. View and modify policies by typing gedit/etc/audit/auditd.conf
