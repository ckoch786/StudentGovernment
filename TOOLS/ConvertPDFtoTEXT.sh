#!/bin/sh
#
 # ConvertPDFtoTEXT.sh
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

##Convert from PDF to Text to make the files searchable with grep.
pathPDF=/home/terah/StudentGovernment/TEMPFILES/PDFS 
pathTEMP=/home/terah/StudentGovernment/TEMPFILES
cd $pathTEMP
pwd
mkdir textFiles
ls
echo " "
pathText=/home/terah/StudentGovernment/TEMPFILES/textFiles


ls $pathPDF >> $pathTEMP/fileList
cd $pathText
cat $pathTEMP/fileList | while read line; do
    echo "Converting "$line "To Text"
    pdftotext $pathPDF/$line
    done
mv '*.txt' $pathText
echo " "
echo "Listing Changes..."
ls $pathText
