#!/bin/bash
echo "Copy FIRMWARE Files"
rm -r out/target_files/RADIO/
mkdir -p out/target_files/RADIO/
cp -r other/firmwares/b128/* out/target_files/RADIO/
