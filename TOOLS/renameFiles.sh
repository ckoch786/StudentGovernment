# http://perldoc.perl.org/perl.html
#http://perldoc.perl.org/perlrequick.html
#http://aruljohn.com/info/renamemultiplefiles/
#rename "s/ *//g" *.jpg

rename "s/[\s+-]//g" *.*

#where s/ means search and replace 
# \s matches a whitespace character, the set [\ \t\r\n\f] and others

# Example   s/regex/replacement/modifiers
#[] denote character classes
# //g means grouping
# With the global modifier, s///g will search and replace all- 
# occurrnces of the regex in the string
# *.* means for all file names and file extensions
