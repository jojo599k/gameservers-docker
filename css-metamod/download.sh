#!/bin/bash

set -e

source /steam/scripts/zip-utils.sh

MMVERSION=$( curl https://www.sourcemm.net/downloads.php/?branch=stable | grep -o "mmsource-[0-9\.]*-git[0-9]\+-linux.tar.gz" | head -n 1 )
MMMAJORVERSION=$(echo $MMVERSION | cut -d '-' -f 2 | cut -d '.' -f 1,2 )

echo "Downloading metamod ${MMMAJORVERSION}.${MMVERSION}..."
curl -o $MMVERSION "https://mms.alliedmods.net/mmsdrop/$MMMAJORVERSION/$MMVERSION"
tar -xf mm*.tar.gz -C cstrike/
rm -f mm*.tar.gz

SMVERSION=$( curl http://www.sourcemod.net/downloads.php?branch=stable | grep -Eo "sourcemod-.*?-linux.tar.gz" | head -n 1 )
SMMAJORVERSION=$( echo $SMVERSION | grep -Eo "\-[0-9]*\.[0-9]*" |  grep -Eo "[0-9]*\.[0-9]*")

echo "Downloading metamod ${SMMAJORVERSION}.${SMVERSION}..."
curl -o $SMVERSION "http://www.sourcemod.net/smdrop/$SMMAJORVERSION/$SMVERSION"
tar -xf sourcemod*.tar.gz -C cstrike/
mv cstrike/addons/sourcemod/plugins/disabled/randomcycle.smx cstrike/addons/sourcemod/plugins/randomcycle.smx
rm -f sourcemod*.tar.gz

# MapChooser Extended
# https://forums.alliedmods.net/showthread.php?t=156974?t=156974
curl -o mapchooser_extended_1.10.2.zip "https://forums.alliedmods.net/attachment.php?attachmentid=130293&d=1391630113"
unzipAndMoveToDir mapchooser_extended_1.10.2.zip /steam/css/cstrike/
mv cstrike/addons/sourcemod/plugins/disabled/rockthevote_extended.smx cstrike/addons/sourcemod/plugins/rockthevote_extended.smx
mv cstrike/addons/sourcemod/plugins/disabled/mapchooser_extended_sounds.smx cstrike/addons/sourcemod/plugins/mapchooser_extended_sounds.smx
mv cstrike/addons/sourcemod/plugins/disabled/nominations_extended.smx cstrike/addons/sourcemod/plugins/nominations_extended.smx
rm -f mapchooser_extended_1.10.2.zip
