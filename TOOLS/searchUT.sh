#
 # searchUT.sh
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

LastName="R"
FirstName="M"


wget -O - "http://www.utoledo.edu/eDirectory/StudentDirectoryResults.asp?searchType=stumain&hidPage=0&txtLastName=$LastName&txtFirstName=$FirstName&txtDept=&btnSubmit=Submit" >> /home/terah/Downloads/SGdec15/SearchResults.html

echo "\n\n\n\nw3m start-----------------------------------------------------------" >> /home/terah/Downloads/SGdec15/SearchResults

w3m "http://www.utoledo.edu/eDirectory/StudentDirectoryResults.asp?searchType=stumain&hidPage=0&txtLastName=$LastName&txtFirstName=$FirstName&txtDept=&btnSubmit=Submit" >> /home/terah/Downloads/SGdec15/SearchResults



