#!/usr/bin/python

import glob
import datetime as dt
import sys
import subprocess
import os

IMGFMT = "jpg"
BUCKET = "s3://jutimelapses/"
SRC_DIR = os.path.join(os.getenv('HOME'), "TimeLapseImgs")
DEST = BUCKET 

# Get list of files in SRC_DIR
lofimgs = glob.glob(os.path.join(SRC_DIR, '.'.join(['*',IMGFMT])))
for imgs in lofimgs:
	print(f'Processing Image file: {imgs}.\nPlease wait...')
	S3DST = os.path.join(BUCKET, os.path.basename(imgs))
	print(f'Image file will be uploaded to {S3DST}')
	CMD = f's3cmd put  {imgs} {S3DST}'
	subprocess.call(CMD, shell=True)
	os.remove(imgs)
