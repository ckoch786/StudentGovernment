#!/bin/sh

#USAGE: python DocumentConverter.py <input-file> <output-file>
ls >> filesList

cat filesList | while read line; do
    echo "Converting" $line "To pdf"

    python DocumentConverter.py $line  $line.pdf

    done




