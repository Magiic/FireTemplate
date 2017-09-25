#!/bin/bash

installDirectory=~/Library/Developer/Xcode/Templates/FireTemplate/

echo "Install Xcode Project & File Templates to ${installDirectory}"

if [ -d "${installDirectory}" ]; then
    rm -r "${installDirectory}"
fi

mkdir -p "${installDirectory}"

cp -r Sources/* "${installDirectory}"

if [ $? != 0 ]; then
   echo "Error : Copy Templates to ${installDirectory} failed"
else
   echo "Install finished. You can find template to ${installDirectory}"
fi
