#!/bin/bash

# Simple script to install everything in ${HOME}/bin


# If ${HOME}/bin does not exist, creates it:
mkdir -p ${HOME}/bin

cp take_shot.sh upload_images.py shot_and_upload.sh ${HOME}/bin/.