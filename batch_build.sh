#!/bin/bash

source_folder=$1
target_folder=$2

if [ ! "$source_folder" ]; then
  source_folder="."
fi

if [ ! "$target_folder" ]; then
  target_folder="."
fi

for UCEFolder in $source_folder/*/; do
{ 
    UCEFileName=$target_folder/AddOn_$(basename -- "$UCEFolder").UCE
    echo ""
    echo ""
    echo "================================================================"
    echo "|"
    echo -e "| ---> Building UCE pack from folder: $UCEFolder \t--->\t$UCEFileName"
    echo "|"
    echo "================================================================"
    echo ""
    echo ""
    ./build_sq_cartridge_pack.sh $UCEFolder $UCEFileName
} 
done

