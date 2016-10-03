#Files, Directories Commands

- `pwd`: present working directory
- `cd`: change directory
- `~`:home directory
- `cd..`: takes us up one directory level
- `cd../..`: takes us up two directories
-` ls absolute path`: list all files under that path
- `ls -l`: long listing of directory contents (file name, ownership, permission, modification date, sizes of files and folders)
- `ls -R`: content of current directory and subdirectory
- `ls -R | more`: pipes it out to more utility for human readability
- any file/folder beginning with . is hidden
- create hidden files and folders by adding a dot before it
- user home directories are under root directory /home. It contains personal configuration files. Personal system settings of home user will take precedence over system-wide settings. 
- `touch`: create empty files, retouch time/date
- `touch -c`: touch without creation
- `touch -d "February 1 2015"`:touch with new date
- `cp filename1.txt directory/ filename2.txt`: copy and rename
- other cp options:

option | function
 --- | ---
i | interactive
p | preserve original owner
f | forced overwrite
r | recursive
a | archive (copy symbolic links ) folders
u | update - copy only if original is newer than the current

- `mv file1.txt file2.txt`: rename file1 as file2
- `mv file1.txt directory/file2.txt`: move file1 and rename to file2
- `mkdir -m`: set mode
- `mkdir -p file1/file2`: force creation of parent folder
- `rm -rf`: delete directory recursively by force
- touch cannot be use to create directory, even though it can be used to update directory
- linux commands, file names and directory names are all case sensitive
- `echo "$(date)"`: print the date
 
 
