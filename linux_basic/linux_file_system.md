#Linux File System
It allows easy-to-locate storage, persistent saving, preserved data integrity and quick retrieval of information on storage device

Disk file system is a specific implementation of general file system. Linux files system uses hierarchy structure based on file system hierarchy standard (FHS) which have a standard **root directory** with several sub directories in a certain orderly manner.

## sub folders under root directory
- `bin`: contains executable file to manage and run file system including bash file and file management utility e.g. cp, mv
- `boot`: boot loader file to boot our system
- `dev`: contains special file to represent the hardware device that can be installed on system e.g. hard drives. There are two kinds of device files: 
	1. Character-oriented device files allows send/receive data sequentially one character at a time e.g. printer, mice, tap drives and other peripheral devices; 
	2. Block-oriented device files where data is managed as blocks and supports random access e.g. actual hard drive and usb thumb drive
- `etc`: text based configuration file used by the system and services running on our system

|etc directory | description |
|---|---|
|/etc/aliases |  table to redirect all to local users |
|/etc/exports | configured file systems to be exported to remove NFS client |
| /etc/fstab | lists the partitions and file systems that will be automatically mounted when we boot our Linux sytsem |
| /etc/ftpusers | control users access to FTP service |
| /etc/group | contains local group definitions |
| /etc/grub.conf | contains configuration parameters for the init process |
| /etc/hosts | contains list of hostname to IP address mappings that we can use to resolve certain hostnames |
| /etc/inittab | contains configuration parameters for init process |
| /etc/init.d | subdirectory that contains startup scripts and services |
| /etc/rc.d/init.d/ | Red Hat or CentOS based systems startup scripts |
| /etc/passwd | Linux systems user account files |
| /etc/shadow | contains encrypted passwords for our user accounts |
| /etc/resolv.conf | where we specify what DNS server and domain suffix that our system is going to use |
| /etc/X11 | has the X windows configuration files |

- `home`: contains subdirectories serve as home directories for our user account
- `lib`: library folder contains code library use by program that live in our bin or sbin folders 
- media: directory used by linux distribution e.g. OPEN SUSE or FEDERA to mount external devices e.g. external USB device
- `mnt`: used by some linux distribution to mount external drives e.g. CD drives, DVD drives or USB drives
- `opt`: contain files for some programs that you can installed on your own manually
- `proc`: It does not exist on file system. It is a sudo file system dynamically created whenever it is accessed. It allow accessing processes and other system information from the linux kernel. It contains subfolders with numbers representing process ids.  All processes on file system corresponds to a dynamically created file under the proc folder
- `root`: root user home directory
- `sbin`: system management and administration file such as fdisk, fsch, ifconfig, init, makefs, halt, shutdown
- `srv`: contain subdirectories of services running on the system such as httpd or ftpd
- `sys`: contain hardware of our system
- `tmp`: temporary files created by our file system
- `usr`: contains application files
- `var`: linux variable data as well as log files
