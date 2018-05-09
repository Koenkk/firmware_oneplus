#!/bin/bash
# E.G. ./extract.sh <FILE> oneplus5 out/oneplus_5/oneplus_5_oxygenos_4.5.12_firmware.zip

# Variables
FILE=$1
TMP=.tmp
OUT=firmware.zip

# Extract ROM
rm -rf $TMP
mkdir $TMP
unzip $FILE firmware-update/* RADIO/* -d $TMP
mv $TMP/RADIO/* $TMP/firmware-update/
rm -rf $TMP/RADIO

# Remove old firmware
rm -f $OUT

# Package new firmware
zip -9 -r $OUT $TMP/firmware-update

rm -rf $TMP
