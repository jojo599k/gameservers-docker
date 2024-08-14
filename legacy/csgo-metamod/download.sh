#!/bin/bash

MMVERSION=$( curl https://www.sourcemm.net/downloads.php/?branch=stable | grep -o "mmsource-[0-9\.]*-git[0-9]\+-linux.tar.gz" | head -n 1 )
MMMAJORVERSION=$(echo $MMVERSION | cut -d '-' -f 2 | cut -d '.' -f 1,2 )

echo "Downloading metamod ${MMMAJORVERSION}.${MMVERSION}..."
curl -o $MMVERSION "https://mms.alliedmods.net/mmsdrop/$MMMAJORVERSION/$MMVERSION"

SMVERSION=$( curl http://www.sourcemod.net/downloads.php?branch=stable | grep -Eo "sourcemod-.*?-linux.tar.gz" | head -n 1 )
SMMAJORVERSION=$( echo $SMVERSION | grep -Eo "\-[0-9]*\.[0-9]*" |  grep -Eo "[0-9]*\.[0-9]*")

echo "Downloading metamod ${SMMAJORVERSION}.${SMVERSION}..."
curl -o $SMVERSION "http://www.sourcemod.net/smdrop/$SMMAJORVERSION/$SMVERSION"
