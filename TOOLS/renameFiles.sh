#
 # renameFiles.sh
 #* Copyright (C) 2011-2012 Cory Koch.
 #*
 #* This file is part of StudentGovernmentTools.
 #* 
 #* StudentGovernmentTools is free software: you can redistribute it and/or modify it
 #* under the terms of the GNU General Public License as published by the
 #* Free Software Foundation, either version 3 of the License, or
 #* (at your option) any later version.
 #* 
 #* StudentGovernmentTools is distributed in the hope that it will be useful, but
 #* WITHOUT ANY WARRANTY; without even the implied warranty of
 #* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 #* See the GNU General Public License for more details.
 #* 
 #* You should have received a copy of the GNU General Public License along
 #* with this program.  If not, see <http://www.gnu.org/licenses/>.
 #*/

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
