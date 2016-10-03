#Archiving files

- tar: a linux utility that archives things. It sticks all 
- files together into one file, no compression or compact files. It stands for 'tape archive' since it was used for tape archive in the old days.

options | description
--- | ---
-cf | create file
-xf | extract file

#Compress files

tools | zip | unzip
--- | --- | ---
gzip | gzip |gunzip
bzip2 |bzip2 |bunzip2
zip | zip | unzip
tar | tar -zcf (file.tar.gz or file.tgz ) or tar -jcf (file.tar.bz2 or file.tb2) 

- zip is not installed by default on Centos and RedHat servers
- zip only command that archive and compress
- bzip does the compression more efficiently
