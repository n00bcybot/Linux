# Searching within Files with grep
# grep is the abbreviation of the phrase “global regular expression print” and its main functionality is to search
# within files for the specified pattern

-i  # the search is case insensitive
-r  # the search is recursive (it searches into all files within the given directory and its subdirectories)
-c  # the search counts the number of matches
-v  # invert the match, to print lines that do not match the search term
-E  # turns on extended regular expressions (needed by some of the more advanced meta-characters like | , + and ?)

