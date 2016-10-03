# Command Help
There are several approaches to obtain help on a command:

1. `man` e.g. man passwd or man 5 passwd, where 5 correlates to the section in the manual pages
2. `whatis` e.g. whatis passwd, which returns name section of the manual page for the given keyword command.
3. `apropos` e.g. conduct a thorough search for keyword in all manual documentation and return all commands containing the given keyword search in their documentation. This is similar to `man -k keyword`. 

## Man
Manual pages consists of a few sections:

- Executable programs and shell commands
- System calls provided by the kernel
- Library calls provided by the program libraries
- Device file (stored in /dev)
- File formats
- Games
- Miscellaneous (macro pacakages, conventions )
- System adminstrator commands (programs run mostly or exclusively by root)
- Kernel routines

It generally is organized as followed:

- name (what the command is)
- synopsis (usage, optional parameters)
- description (summary of what the command does)
- options
- files 
- see also (pointers)
- bugs
- history
- author

### Shortcut Keys for Man Pages
Navigation Key | Description
--- | ---
H or h | displays help
Page Down, spacebar, Ctrl+V, Ctrl+F | moves down one screen
Page Up, Esc+V, Ctrl+B | moves up one screen
Down Arrow, Enter, Ctrl+N, Ctrl+E, Ctrl+J | moves down one line
Up Arrow, y, Ctrl+y, +P, +K | moves up one line
/pattern | searches forward pattern
?pattern | searches backward pattern
n or / | repeats the previous search
Q or ZZ | quits

##Info
Info pages offers the capability of providing manual pages with links.

###Shortcut Keys for Info Pages
Navigation Key | Description
--- | ---
? | help information
N | Move to next node in a linked series or level
P | Move back in a series or level
U | Move up on level in the hierarchy
Arrows Keys | Move the cursor around screen to select links
Page Up, Page Down | scroll up and down within a single node
Enter | Move to a new node after selecting it
L | Display the last info page read
T | Display the top page for a topic
Q | Exit from the info page system

##Other Help Files
Other help files can be found as README files or configuration files in pdf, postcript, html format.

README files are located at:

- /usr/doc/packagename
- /usr/share/doc/packagename
- /usr/share/doc/packages/packagename

Configuration files are located at:

- /etc

For RPM-based distribution, we can use  RPM tool to locate documentation for a package as `rpm -ql packagename | grep doc`

## Other ways to Get Help

Other ways to obtain help:

- `find /usr/share/doc-name "*passwd*"`: search by a particular directory tree for a password
- `locate passwd`: search a database of filenames, quicker than find. Can't give it a directory tree as in find. Gives you a list of files with filename containing passwd.
- `whereis passwd`: search for program executables/files within restricted set of location (standard binary files directory, library directories, man pages). Not the user directories.
