



### Handling Files

command | description
--- | ---
cat | display content of text file
less | read a file
head/tail | read first 10 lines of a file or last 10 lines of a file
find | locates file on system
grep | search a string in the file
sort | organizes text in a file
cut | manipulate data by columns 
wc | use to do a word count

####options for find

option | description
--- | ---
-type f | finds file
-type d | finds directory
-name 'name*' | find by name

####options for grep

option | description
--- | ---
-i | case insensitive
-in | add line number 

####options for sort

option | description
--- | ---
-r | reverse
-n | order number

###options for cut

option | description
--- | ---
cut -c2-4 file.txt | cut column 2 to 4
cut -c2,4 file.txt | cut column 2 and 4
cut -d" " -f2 file2.txt | has a delimiter and cut 
`cut`: cut -c2-4 file.txt, cut -c2,4 file.txt, cut -d" " -f2 file2.txt
`ps`: snapshot of current processes

###wordcount
give statistics for the file

option | description
--- | ---
w | word count
c | character count

###IO Redirection

Standard Bash File Descriptors
- stdin: means have standard input
- stdout: means have standard output
- stderr: file descriptor stands for standard error

output arrow | description
--- | ---
`>` | redirect to a file
 `2>` | redirect stderror
 `>>`| append to current file

e.g. mount 1> mountfile 2> mounterror

### Regular Expressions

symbol | description 
--- | ---
\* | matches any character
. | any single character
? | matches zero or one of the preceeding characters
^ | matches beginning 
$ | matches ending
[nnn] | matches any one character between braces
[^nnn] | matches any expression that doesn't contain any one of the characters specified
[n-n] | Matches any single character
[1-10] | Aany character between 1 and 10
ser | matches ser

##Text Editors
GUI Editor kate, gedit
nano, pico, vi

### Nano
`Ctrl-K`: cut
`Ctrl-U`: uncut

### vi
INSERT mode: i INSERT, S, O, A
COMMAND mode: ESC. Use : to go to command line.Use :w to write file. :exit to exit. :wq writes and quit. :q quit only. :w! overwrite the current file again, and display a copy on screen. :e! forget all the changes, revert to previous copy on screen. dw: delete word. de: delete after cursor not including the space. dd: delete entire line. p: paste what is deleted last. /here: search for a term.
REPLACE mode

## Basic Shell Scripting
scripts interpreter: 

- /bin/sh (rarely used these days original Bash Shell)
- /bin/bash (bourne again shell)
- basic syntax ( echo, for, if, Exit, && = AND, || = OR, while loop, until loop, for loop, seq 5 15)

###  Options for if/then/else

Options | Descriptions
--- | ---
-d | checks if specified directory exist
-e | checks if specified file exist
-f | checks if the specified file exist and it's a regular file
-G | checks if file exist and it's owned by a specific group
-h or -L | checks if specified file exist and if it is a symbolic link
-O | check if the specified file exist and it is owned by a specific UID
-r | check if specified file exist and if read permission is granted 
-w | check if specified file exist and if the write permission is granted
-x | check if the specified file exist and if the execute permission is granted

### Loop Syntax
    while condition
    do 
    	script command
    done


### until condition
    do 
    	script command
    done


### [-z]
    if [ -z $filename ]
    	echo $filename
    	exit 0
	else 
		echo "You need a filename"
    fi


##Choosing Operating System

- Windows: uses proprietary applications, Active Directory, Microsoft SQL
- Apple: has their own software and hardware, tight integration with ecosystem, extremely difficult to lockdown and manage security
- Linux: desktop is free and personal, flexible server room, ubiquitous usage in the mobile world

All have GUI and CLI:

- Windows: can have both GUI/GLI, with no GUI overhead
- Apple: OSX has unix underneath, and can be managed from the CLI
- Linux: Windows have both GUI and CLI. PowerShell can be used to managed the CLI.


##Distribution Life Cycle Management

- Design,  Develop, Deploy, Manage, Retire

system | life cycle length | release cycle length
---|---|---
RHEL | 10 years | 3-4 years
Fedora | 1 year | 6 months
SLES | 7 years  | 3-4 years
OpenSUSE | 18 months | 8 months
Debian | 3-4 years | 2 years
Ubuntu | 5 years | 2 months


##Hardware
- CPU: automatic program control /data processing e.g.intel, AMD, ARM (smart phones)
- RAM: program/data that are currently used are stored.
RAM is not persistent. RAM is Dynamic RAM. Stores bit in a cell with transistor / capacitor. Nanoseconds.
- Graphics Card: 3D acceleration. Contains their own processor.
- Motherboard: all affixed to, and connectors. BIOS contain series of small program to connect I/O to CPU.
- Power Supply: AC -> DC
- Hard Disk: not currently used. Increased in space, decrease in retrieval. miliseconds. R/W head in contact to platter while the disk is still running. Acceleration Sensors. SSD: flash memory instead of magnetize platter. Storage RAM maintain its content without electricity. No moving parts. Save Energy. Serial ATA (SATA). USB.
- Optical Drives: CD (900MB), DVD (9GB). Access through laser.
- cathode ray tube, liquid crystal display (LCD)

##Linux Kernel
- core of linux installation
- lowest level of easily replacement software that interfaces with the hardware of the computer
- responsible for all interfacing/application running on user mode down to physical hardware
- allow processes can get information from each other under the interprocess communication system
- manage memory
- doles out CPU time
- provides software access to hard disk
- kernel loaded very early on in boot process
- manage every other piece of software on the linux
- change init equals to decide where it loads from
- typically run sbin/init program as the first program and is responsible for starting all the basic program
- typically have dozen of 200 processes running
- tree like hierarchy of processes
- kernel maintain processes in process table
- ps / top can view and manipulate this table

##Processes
- Every process has an associated process id (PID)
- Every parent process has a parent id (PPID)
- We can identify these PIDS and PPIDS with tools like ps
- understand processes using ps, top
- identify memory using frees

###`ps` Options
- it provides pid, time it is running, and commands running it.

option | description
--- | ---
ps -u mary | checks for a particular user 
ps -u mary --forest | child and parent relationship
ps -u U mary | add other info like %CPU, %MEM
ps ax | processes as well + add other info like %CPU, %MEM
ps aux | add user name as well + add other info like %CPU, %MEM

###`top` Options
- interactive version of ps
- top sorts by  CPU use
- update display every few seconds
- good for analyzing memory usage over time
- provides load average ( a measure of demand on CPU ) by application. 
- 0 load average is a system that no programs are demanding CPU time
- 1 system average with one program runs a CPU intensive task
- higher load averages on a single CPU reflect programs competing for available CPU time
- load averages can reach the number of CPUs or cores before competing for CPU time even begins on system with multiple processes. e.g. load average of 4.0 on a system with a quad core processor reflects processes demanding exactly as much CPU time as the computer has available.

option | description
--- | ---
? / h  | check for help for top
k | kill a process id
r | change process priority
p | sorts display for CPU usage
m | sorts by memory usage

###Free
- generate report on system memory status
- swap is set aside as adjunct to memory
- free -h gives human readable measurement

## syslog, klog, dmesg
### var/log folder log files
var/log directory stores the log

- boot.log: log services that are started late during boot process via systemv or startup script
- cron: process that run regular interval via cron daemon (linux scheduling service)
- cusp: linux printing service
- gdm: gnome display manager - handles GUI login for many system
- messages: general purpose log file that contain messages for many of our linux daemon
- secure: security related message get log to. secure root privilege.
- xor.0: xwindow startup process logs
 
###log rotation 
log rotation happens for linux every night. Automatically create a new log and append the timestamp.

###reading log files
tail command s good for reading log files.
only daemon/servers log like this in log files
grep sshd /var/log/* is another good option to search for a string in the /var/log

###creating log files
- most rely on system log daemon to do the logging (syslog, syslogd)
- Depending on linux distribution, we have klogd handles logging messages from kernel separately
- edit a configuration file to determine what is log at /etc/rsyslog.conf
- once our log daemon is running, it accepts messages from other processes using unique known system message, sort them and direct them to suitable log file depending on priority or source.
- `linux kernel ring buffer`: log file for the kernel. It is stored in memory instead of disk file. Contents are dynamic and continue to change. We can use dmessage tool to view it.
- etc/rc.local - add a variable there to log dmessage > /var/log/dmesg. It will take effect on next reboot.

## /lib, /usr/lib, /etc , /var/log

data locations | description
--- | ---
/lib | linked library files and static files used by binaries in /bin and /usr/bin. Kernel module and device drivers.
/usr/lib | dynamic libraries and support static files for executable that live in the /bin or /usr/bin. Subdirectories can be used for plugins/extension.
/etc | configuration files for linux operating system. If software uses multiple folders, they are put in the same folder under this directory. Linux daemons e.g. apache have configuration file in subfolders in this /etc folder.
/var/log | log files for different daemons running on our systems. klog to view kernel specific message or dmessage tools.

##Internet, Network, Router

- the last octet in the ip address cannot be zero as it is reserve for the address of the network segment itself. It identifies an entire subnet.
- the last octet cannot be 255 as it is for sending broadcast to all whole host of the segment.
- NAT creates a private IP address space on the LAN with multiple devices and computers but the outside route has only 1 public IP address which the internal network gets translated through.
- private IP addresses ranges:
	- 10.0.0.0-10.255.255.255 (Class A)
	- 172.16.0.0-172.31.255.255 (Class B)
	- 192.168.0.0-192.168.255.255 (Class C) => netgear, linksys
-Subnet mask consist of two parts: network and node
-Every system on the same segment must have the same number on the network portion of the address, however they have to have a unique node portion for the device.
-Subnet mask determines how much portion of the ip range is used for the network vs. for the node.
-OS see the ip address and subnet mask as binary notation.

###Class A Subnet Mask
- first octet must be between 1 and 126
- first octet is the network address
- last three octets of the address is the node address
- default subnet mask class A is 255.0.0.0
- class A allows 126 total possible network, and 16.7 million possible node addresses

###Class B Subnet Mask
- first octet must be between 128 and 192
- first two octets are the network address
- last two octets of the address is the node address
- default subnet mask class B is 255.255.0.0
- class B allows 16384 total possible networks and can offer 65534 possible node addresses

###Class C Subnet Mask
- first octet must be between 192 and 223
- first three octet are the network address
- last octet of the address is the node address
- default subnet mask class C is 255.255.255.0
- class C allows 2,097,152 networks, and offer 254 possible node addresses

###Partial Subnet
- no need to use default subnet mask e.g. 255.255.252.0
- add more network addresses, reduce node devices
- for two device to communicate, it needs to be in the same subnet mask

##DNS and Default Gateway (Network Routers)
DNS servers translate domain names into IP address
bind-utils provide dig that allows resolve web domains into ip addresses

##Network Configuration 
Network Tools:

tools | description
--- | ---
ping | testing of connectivity of a remote network device
dig | allows lookup IP addresses for DNS names
netstat | list network connections, routing info, NIC info
route | current route/net settings, add route to the route table, check the router (default gateway) (Destination ip, Gateway (ip address of router to route information to remote network or host), Genmask )
traceroute | traces the route a packet takes
ifconfig | current network settings / network interface addresses
ip addr | current IP address and network settings

- /etc/resolv.conf (FILE): this is where our DNS server information is stored. Forwarding all DNS request to that DNS server
- /etc/sysconfig/network-scripts/ifcfg-eth0: This is were the network interface device resides. 
- BOOTPROTO = dhcp assigns the ip address each time a boot happens
- `route add` -net network_address netmask subnet_mask gw router_address e.g. route add -net 10.10.40.0 netmask 255.255.255.0 gw 10.10.40.1
- `route del` -net 10.10.40.0 netmask 255.255.255.0 gw 10.10.30.1
-`netstat -a`: all listening and non-listening socket on our linux machine
-`netstat -i`: all stats on our network interface
-`netstat -l`: listening sockets
-`netstat -s`: summary for each protocol
-`netstat -r`: routing table
-trace: trace route utility of how packet traverses to arrive at its destination. Same ICMP echo response. Can track down what router the packet is not working well with.

##Root and Standard Users
- access controls prevent users from accessing files that they should be accessing through user/group/others
- authentication: users have a set of credential
- permission: users have access control to what user can do with files and directories
- with `finger`, we are allow to view the user login, name, directory, shell
- with `id`, find out the user id and group id
- `/etc/passwd` contains system users account information (user login: password : user id : group id: full name: home directory : shell )
- `/etc/shadow` contains the user password. coincide with /etc/passwd. ( user login: password (encrypted):last modified day since jan 1 1970: maximum number of days : days warning field : disable days field :expiry field since jan 1 1970 ). It has to stay in sync. Not recommended to ever edit this file manually. Always use user manage utility
- `/etc/group` contains system group
- `pwck` checks integrity of password
- `pwconv` run through and add any missing user from /etc/passwd to /etc/shadow file
- root user can read and write every file on the linux file system
- `su`: substitute user / super user
- `ip addr`: ip address of linux file system
- `sudo`: run one command at a time as root privilege
- `w`: users currently on machine and processes (USER, TTY, LOGIN, IDLE, JCPU, PCPU, WHAT). JCPU is the time used by all processes attached to our  TTY (not all past background job, but current background job ). PCPU is time used by current process. 
- who: users logon
- who -b: last boot time
- who -m: host name and user associated with it
- who -r: current run level is for our user
- who -q: number of users log on
- who -a: all the information at once
- last user: what last commands by the user

###Systems User
system user accounts are not use by user to login, but by system services that need access to do other things and uses lower number. This is between 201 to 999. User accounts are 1001 to beyond.

##User Command
user id is used in process/file ownership and logging in. 

`id`: user id details e.g. id adam or id -u adam or id -g adam. id -Gn user which user currently is in.
`groups`: which group user belong to
`last`: last login
`useradd`: add a user

- `/etc/default/useradd` contains user default.  Another alternative to the /etc/default/useradd file is `useradd -D`
- `/etc/logins.def` : contains defaults value that be used for group id and user id parameters (UID_MIN, UID_MAX, SYS_UID_MIN, SYS_UID_MAX )
- copies `/etc/skel/ `hidden files to the newly created home directories
    
###useradd options
options | description
--- | ---
-D | useradd default
-C | add comment about user full name
-e | specify date the user account will be disabled
-f | number of days after expiration to disable account
-g | user default group
-G | additional groups the user can be a member of
-M | create user account without a home directory
-m | sets the user home directory to a new location 
-p | user password
-r | setting up a system user
-s | default shell
-u | manually specify the user id number

###usermod options
- manage users

options | description
--- | ---
-c | add user full name
-e | sets the dates for user account to be disabled
-f | sets the number of days after password expiration for account to be disabled
-g | sets user default group
-G | sets additional groups
- l | change user name of user name
- L | locks user account through invalidating user access
- m | move home directory
- p | sets the user password
- u | change user id
-U | unlock the user account

###paswd options
- cat passwd
- passwd user3 will set the user3 password

options | description
--- | ---
-S | determine if password is locked (LK) and unlocked (PS)
-l | locks user account
-u | unlocks the user account
-d | removes user password
-n | minimum number of days required before password can be changed
- x | maximum number of days required byefore password can be changed
- w | warnings  number of days before password expiration
- i | number of days to wait before password expires before disabling account

##Group Command
- Each line in `/etc/group` represents a group. It consist of Group:Password:GID:users
- `/etc/gshadow` (group name, password, group admins and members of that group ) file is where we store group passwords

### groupadd options
`groupadd OPTION GROUPNAME` is add a group

option | description
--- | ---
-g | groupid
-p | password
-r | system group

###groupmod options
add group member to users

###groupdel options
delete group name

###groups 
show groups for user

##Managing Files Permission

- It is grouped by (user, group, other).
- drwxrwxr-x: d stands for directory
- rwxrwxr-x: - stands for file
- r stands for read (4)
- w stands for write (2)
- x stands for execute (1)
- It is in octal notation.
- x on directories means it can be cd into, x on files means it can be executed
- e.g. chmod 555 filename OR chmod ugo+w 
- to change file, you need to be owner or root
- `chown`: change ownership of file e.g. chown username.groupname filename
- removing permission using -: chmod o-r filename.txt is remove read permission from others. chmod g-w filename.txt remove write permission from group.
- adding permission using +: chmod o+r filename.txt is add read permission to others. chmod g+w filename.txt is add write permission to group.

##Symbolic Links
- ln -s file1.txt file2.txt where file2.txt points to file1.txt. There is a creation of symbolic link

## Special Directories and files

Folder | Description
--- | ---
/var | contains files that change often such as mail, logs, etc
/var/tmp | temporary files are stored that are not get deleted on reboot
/tmp | contains temporary files that do get deleted on reboot. Any user on the linux file system can write to it and delete it.

- Temporary folders have permissions of 777. Other users on the system could delete other users' files. 

- Sticky bit to a folder makes it so that only users that create their own files and folders can delete their own and not other users even if the folder has 777 ( `chmod o+t` )

- Any files under full 777 directory can be added/deleted by other users 

- Remove sticky bit by `chmod 0777`
- Add back sticky bit by `chmod 1777`
