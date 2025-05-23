# In Linux, compressing and archiving are separate processes
# When compressing files, the original files are removed
# Uncompressing removes the compressed file
# Files inside archive can be extracted separately
# Contents of an archive can be viewed

bzip2
gzip
xz

bunzip2
gunzip
unxz

# To view files in the archive
zcat
bzcat
xzcat
# xz provides the highest level of compression, it also consumes the most resources

# tar is the most widely used
# options don't need "-"
# Creating archives with tar - command, options, resulting archive, source
tar cf archiving/3.1.tar compression

# view the contents of a tar ball
tar tf 3.1.tar

# extract content
tar xf 3.1.tar

# extract specific file(s)
tar xvf 3.1.tar compression/hosts.gz

# The tar program can also manage compression and decompression of archives on the fly. tar does so by calling one of
# the compression tools. The most commonly used ones are j, # J, and z for bzip2, xz, and gzip, respectively. Below
# are examples using the aforementioned algorithms:
tar -czf gzip.tar.gz bigfile bigfile2 bigfile3
tar -cjf bzip2.tar.bz2 bigfile bigfile2 bigfile3
tar -cJf xz.tar.xz bigfile bigfile2 bigfile3

# It is possible to add files to already existing uncompressed tar archives.
tar uf plain.tar bigfile4

# Managing ZIP files
# ---------------------------------------------------------------------------------------------------------------------

# The zip and unzip programs can be used to work with ZIP files on Linux systems.
# When adding directories to ZIP files, the -r option causes zip to include a directory’s contents.
