#!/bin/bash

# Simple script to install everything in ${HOME}/bin


# If ${HOME}/bin does not exist, creates it:
mkdir -p ${HOME}/bin

# List of scripts to copy:
scriptList="take_shot.sh upload_images.py shot_and_upload.sh"
cp ${scriptList} ${HOME}/bin/.

echo "Scripts ${scriptList} has been copied to ${HOME}/bin" 