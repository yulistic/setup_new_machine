#!/bin/bash

# Paper Crop (PC).

# Argument check.
if [[ $# -eq 0 ]] ; then
    echo 'file path is required. Exit.'
    exit 0
fi

#Get arguments.
for FILENAME in "$@"
do
	echo "Cropping the file: $FILENAME"
	TEMP_NAME="temp_file_name.pdf"
	pdf-crop-margins --gsFix -ap4 40 44 40 44 -p 100 "$FILENAME" -o $TEMP_NAME
	mv $TEMP_NAME "$FILENAME"
	echo "Completed."

done

#URL=$1

# Get file name.
#echo "Downloading from URL:$1"
#FILENAME=$(wget -nv --content-disposition $URL 2>&1 | cut -d\" -f2) 

#echo "Cropping startd."

#pdfcrop --margins "5 5 5 5" $FILENAME $TEMP_NAME

# Remove original file and change the cropped file name to the original one's.
