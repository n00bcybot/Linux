# The standard location of Linux files and directories is defined by the Filesystem Hierarchy Standard (FHS)

# change user
su - username

# refer to another user's directory
ls ~otheruser
ls ~otheruser/Documents/file/txt

# Combining long list with human readable file sizes such as M for megabytes or K for kilobytes.
ls -lh

# The -d option will list directories but not their contents. Combining this with */ will show only
# subdirectories and no files.
ls -d */

# Combines long list with the option to sort by modification time. The files with the most recent
# changes will be at the top, and files with the oldest changes will be at the bottom.
ls -lt
# But this order can be reversed with:
ls -lrt
# Combines long list with sort by (modification) time, combined with -r which reverses the sort.
# Now files with the most recent changes are at the bottom of the list. In addition to sorting by
# modification time, files can also be sorted by access time or by status time.

# Combines long list with the option to sort by file eXtension. This will, for example, group all files
# ending with .txt together, all files ending with .jpg together, and so on.
ls -lX

# The -S sorts by file size, much in the same way as -t and -X sort by time and extension
# respectively. The largest files will come first, and smallest last. Note that the contents of
# subdirectories are not included in the sort.
ls -S

# The -R option will modify the ls command to display a recursive list.
ls -R
