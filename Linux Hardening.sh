# ENTER to execute commands
# Ctrl+D to close commands

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

echo SETTING AUDIT POLICIES...
# Install auditing program
apt‐get install auditd
# Enable audits
auditctl –e 1
# View & modify policies
gedit/etc/audit/auditd.conf

# Pause to view and modify policies.
read -p "Press [Enter] key to continue..."

echo OPENING PAM PASSWORD FILE...
gedit /etc/pam.d/common‐password

echo Enforce a password history:  
echo Add “remember=5” to the end of the line that has “pam_unix.so” in it.
read -p "Press [Enter] key to continue..."

echo Enforce password complexity with one of each type of character:
echo Add “ucredit=‐1 lcredit=‐1 dcredit=‐1 ocredit=‐1” to the end of the line with “pam_cracklib.so” in it.
echo | Uppercase: ucredit| Lowercase: lcredit | Number: dcredit | Symbol: ocredit | 
echo Cracklibmay needs to be installed before enforcing password complexity.
read -p "Press [Enter] key to continue..."

echo Enforce Password length of 8:  
echo Add “minlen=8” to the end of the line that has “pam_unix.so” in it
read -p "Press [Enter] key to continue..."
