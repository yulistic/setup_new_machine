#!/bin/bash

# Argument check.
if [[ $# -eq 0 ]] ; then
    echo 'URL is required. Exit.'
    exit 0
fi

#Get arguments.
URL=$1

# Get file name.
echo "Downloading from URL:$1"
FILENAME=$(wget -nv --content-disposition $URL 2>&1 | cut -d\" -f2) 

echo "Cropping startd."

TEMP_NAME="temp_file_name.pdf"
#pdfcrop --margins "5 5 5 5" $FILENAME $TEMP_NAME
pdf-crop-margins -ap4 45 49 45 49 -p 100 $FILENAME -o $TEMP_NAME

# Remove original file and change the cropped file name to the original one's.
mv $TEMP_NAME $FILENAME
echo "Completed. Generated file name: $FILENAME"
