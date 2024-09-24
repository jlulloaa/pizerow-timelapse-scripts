#!/bin/bash

TIMESTAMP=$(date +'%Y-%m-%d_%H%M')
SRCPATH=${HOME}
CAMFLDR="TimeLapseImgs"
FEXT="jpg"

# If destination path does not exist, creates it:
mkdir -p ${SRCPATH}/${CAMFLDR}

# Image and camera parameters:
imgWidth=1280
imgHeight=960
noPreview="--nopreview"
imgSharpness=100

camPars=" ${noPreview} --sharpness ${imgSharpness} --width ${imgWidth} --height ${imgHeight} "
#echo "Camera Parameters: ${camPars}"
imgFileName=${SRCPATH}/${CAMFLDR}/${TIMESTAMP}.${FEXT}

/usr/bin/raspistill ${camPars} --output ${SRCPATH}/${CAMFLDR}/${imgFileName}
echo "Shot taken and saved at ${imgFileName}"