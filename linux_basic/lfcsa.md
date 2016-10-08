
#Create File

command |
---|
`touch` |
`echo >>` |

#Edit File

command |
---|
`vim` | 
`vi` |
`nano` |

vim options | description |
--- | --- |
i | enter edit mode |
o | insert a line after line where cursor is on and enter edit mode |
p | paste content in a line after the line where the cursor is on |
P | paste content in a line before the line where the cursor is on |
dd | delete the entire line |
de | delete word only (not the blank space) |
dw | delete word and blank space |
yy | copy the line where the cursor is on |

# Input and Output Redirection
command | description |
--- | --- |
`sort` | sort the list |
`uniq` | keep only unique values |
`fmt -u` | remove empty spaces |
`nl` | number of lines |
`cut -c1-4 file` | cut charater 1-4 of a file|
`cut -d' ' -f1-2 file` | cut the 1st and 2nd word |

# Find File
command | description |
--- | --- |
`find / -name mytext.txt` | find for mytext.txt starting from root directory |
`find / -iname myText.txt` | find for mytext.txt or MyText.txt or any variation of it starting from root directory |
`find /etc -not -name mytext.txt` | find for every single file in /etc folder except for mytext.txt |
 `find /etc -type f` | find all files in /etc folder |
 `find /etc -type d` | find all directories in /etc folder |
 ` find /etc -type l` | find all symbolics links in /etc folder |
 `find /etc -type c` | find all character device |
 `find /etc -size +10000c` | find all files in folder with file size greater than 10000 |
