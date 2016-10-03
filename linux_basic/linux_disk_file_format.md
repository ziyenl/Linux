#Disk File Format
Linux file system has different file systems format:
- **ext2**: 2nd extended file system. Stores data in standard hierarchical manner (Directories containing files). 2TB maximum file size. 4TB volume. File names 255 charater long. Supports linux file system, user, group and compression.
- **ext3**: updated version of ext2. Easily downgrade or update to and fro from ext2. One key advantage is **journalling**. Records transactions to a journal and marks it as **incomplete**. It will only mark it as complete in the journal. It replays the journal when a power outage to restore it. ext2 **needs to check entire file system not ext3 file system**. ext3 checks only the incomplete transaction.
- **reiser**: alternative to ext3 file system. reiser uses journalling to make crash recovery fast. It uses different internal structure for file system to support larger maximum file sizes 8TB. Maximum Volume of 16TB. Makes it faster than ext2 and ext3.
- **ext4**: released late 2008. it is backward compatible to ext2. Supports volume to 1ExaByte. Files to 16TB. Maximum of 4 billions files on ext4 file system. File file name 256 ytes.
