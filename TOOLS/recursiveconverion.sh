#!/bin/sh
path=/home/terah/StudentGovernment/TEMPFILES/
ToolsPath=/home/terah/StudentGovernment/TOOLS
cd $path

echo "Removing illegal Characters from file names..."
  $ToolsPath/renameFiles.sh

#echo "Start OpenOffice.org as a service"
#Start OpenOffice.org as a service TODO how to wait for this before proceeding
#/usr/bin/soffice -accept="socket,port=8100;urp;" &

#USAGE: python DocumentConverter.py <input-file> <output-file>
ls $path > filesList

#cat filesList | while read line; do
#TODO add support for other microsoft formats
grep ".doc*" filesList | while read line; do 
    echo "Converting" $line "To pdf"
    python $ToolsPath/DocumentConverter.py $line  $line.pdf
    done

#echo"moving file to path TEMPFILES ..."
#   mv *.pdf $path

echo "Removing extra Charater extensions from converted files..."
  $ToolsPath/removeGarbageExt

echo "Listing changes"
  ls
