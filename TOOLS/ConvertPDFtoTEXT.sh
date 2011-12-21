#!/bin/sh
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
