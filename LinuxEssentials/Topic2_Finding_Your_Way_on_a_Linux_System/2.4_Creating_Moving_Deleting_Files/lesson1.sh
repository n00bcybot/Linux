# mkdir, by default, won’t create a directory inside of a directory that does not exist
mkdir -p # does (--parents)

# without any options, "find" will show listing of all the files, directories, and sub-directories of current directory
find

# running "touch" on existing file will not change the content, but will update the timestamp
touch

# use "mv" to rename file; if the file already exists, it will be overwritten!
mv

# use -i option to prompt mv to ask you if you are about to overwrite existing file
mv -i

# Deleting Files and Directories
# ---------------------------------------------------------------------------------------------------------------------

# remove empty directory
rmdir
# remove directory along with its content; use -i to prompt confirmation
rm -r <directory>

# Copying Files and Directories
# ---------------------------------------------------------------------------------------------------------------------

# Copy directory and all files in it
cp -r <dir> <dir2>

# cp creates a copy of the source directory inside of it? If the destination doesn’t exist, it will create it and
# fill it with the contents of the source directory

# Globbing
# ---------------------------------------------------------------------------------------------------------------------

* # Matches any number of any character, including no characters
? # Matches any one character
[] # Matches a class of characters. Ranges within [] brackets are expressed using a "-"
$ ls file[1-3]
file1  file2  file3

# Multiple ranges can be specified:
ls file[1-25-7]
file1 file2 file5 file6 file7

# Square brackets can also be used to match a specific set of characters.
ls file[1a5]
file1 file5 filea

# match everything except certain characters
ls file[^a]
file1 file2 file3  file4 file5 file6 file7 fileb filec

# To match a character class, you use [:classname:]
ls file[[:digit:]] # match any digit

# [:alnum:] Letters and numbers.
# [:alpha:] Upper or lowercase letters.
# [:blank:] Spaces and tabs.
# [:cntrl:] Control characters, e.g. backspace, bell, NAK, escape.
# [:graph:] Graphic characters (all characters except ctrl and the space character)
# [:lower:] Lowercase letters (a-z).
# [:print:] Printable characters (alnum, punct, and the space character).
# [:punct:] Punctuation characters, i.e. !, &, ".
# [:space:] Whitespace characters, e.g. tabs, spaces, newlines.
# [:upper:] Uppercase letters (A-Z).
# [:xdigit:] Hexadecimal numerals (usually 0123456789abcdefABCDEF).