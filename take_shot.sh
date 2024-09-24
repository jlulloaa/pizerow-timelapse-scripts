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
echo "Camera Parameters: ${camPars}"

/usr/bin/raspistill ${camPars} --output ${SRCPATH}/${CAMFLDR}/${FECHA}.${FEXT}
