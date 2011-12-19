#!/bin/sh
##Convert from PDF to Text to make the files searchable with grep.


ls >> fileList

cat fileList | while read line; do
    echo "Converting "$line "To Text"
    pdftotext $line
    done
