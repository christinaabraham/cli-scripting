# Basic Command Syntax # 
## Command + Option + Operator + File Name/Location ##

# ENTER to execute commands
# Ctrl+D to close commands

########## WEEK OF NOVEMBER 30 ##########
echo Only execute this script if, and only if, the forensics questions are completed.
read -p "Press [Enter] key to continue..."

echo EXECUTING SHELL SCRIPT...

echo CHECKING FOR UPDATES...
sudo apt-get update
sudo apt-get upgrade

echo DISPLAYING INSTALLED PACKAGES...
dpkg -l

echo DISPLAYING RUNNING TASKS AND PROGRAMS...
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

echo [TODO] Enforce a password history:  
echo Add “remember=5” to the end of the line that has “pam_unix.so” in it.
read -p "Press [Enter] key to continue..."

echo [TODO] Enforce password complexity with one of each type of character:
echo Add “ucredit=‐1 lcredit=‐1 dcredit=‐1 ocredit=‐1” to the end of the line with “pam_cracklib.so” in it.
echo | Uppercase: ucredit | Lowercase: lcredit | Number: dcredit | Symbol: ocredit | 
echo CrackLib may need to be installed before enforcing password complexity.
read -p "Press [Enter] key to continue..."

echo [TODO] Enforce Password length of 8:  
echo Add “minlen=8” to the end of the line that has “pam_unix.so” in it
read -p "Press [Enter] key to continue..."

# Disable SSH or set permissions to which only root users may access its contents.
echo SETTING SSH PERMISSIONS...
chown root:root /etc/ssh/sshd_config
chmod 600 /etc/ssh/sshd_config

# Enable SELinux
echo ENABLING KERNEL SECURITY MECHANISM...
echo [TODO] Using a text editor, open the following file:
nano /etc/selinux/config
echo [TODO] Make sure the following is enforced: SELINUX=enforcing

# View Firewall configurations
echo CURRENT FIREWALL STATUS...
iptables -L

########## WEEK OF DECEMBER 13 ###########

# 0 > /proc/sys/net/ipv4/ip_forward
echo DISABLING IP FORWARDING...
sysctl -w net.ipv4.ip_forward=0
net.ipv4.ip_forward = 0


# Install Additional Hardening Software
echo INSTALLING BASTILLE...
apt-get install bastille
echo After installation, please type "bastille -c" into the command line.
read -p "Press [Enter] key to continue..."

echo INSTALLING APPARMOR...
apt-get install apparmor-profiles
# View current profiles and associated modes
apparmor_status 
# More details of what to do with that information
man apparmor
read -p "Press [Enter] key to continue..."

echo ANALYZING DNS...
echo Check for rogue entries in the resolv.conf file. 
vi /etc/resolv.conf 
read -p "Press [Enter] key to continue..."

echo SETTING UID...
 –i / su
find / \( -perm -2000 \) 
chown root:admin /bin/example
chmod 02750 /bin/example
find / \( -perm -4000  \) 
chown root:admin /bin/example
chmod 04750 /bin/su

echo Make sure system users have /bin/null set as their shell. 
echo Check for rogue users.
vi /etc/passwd 
vi /etc/shadow 
read -p "Press [Enter] key to continue..."
