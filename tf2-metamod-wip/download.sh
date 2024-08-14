#!/bin/bash

MMVERSION=$( curl https://www.sourcemm.net/downloads.php/?branch=stable | grep -o "mmsource-[0-9\.]*-git[0-9]\+-linux.tar.gz" | head -n 1 )
MMMAJORVERSION=$(echo $MMVERSION | cut -d '-' -f 2 | cut -d '.' -f 1,2 )

echo "Downloading metamod ${MMMAJORVERSION}.${MMVERSION}..."
curl -o $MMVERSION "https://mms.alliedmods.net/mmsdrop/$MMMAJORVERSION/$MMVERSION"

SMVERSION=$( curl http://www.sourcemod.net/downloads.php?branch=stable | grep -Eo "sourcemod-.*?-linux.tar.gz" | head -n 1 )
SMMAJORVERSION=$( echo $SMVERSION | grep -Eo "\-[0-9]*\.[0-9]*" |  grep -Eo "[0-9]*\.[0-9]*")

echo "Downloading metamod ${SMMAJORVERSION}.${SMVERSION}..."
curl -o $SMVERSION "http://www.sourcemod.net/smdrop/$SMMAJORVERSION/$SMVERSION"

if [[ -n $PLUGIN_BOT_MANAGER ]]; then
    # https://forums.alliedmods.net/showthread.php?p=1983621
    echo "Downloading https://github.com/DoctorMcKay/sourcemod-plugins/raw/master/plugins/botmanager.smx.."
    curl -o botmanager.smx "https://github.com/DoctorMcKay/sourcemod-plugins/raw/master/plugins/botmanager.smx"
    mv botmanager.smx tf/addons/sourcemod/plugins/botmanager.smx
    cat <<EOF >/steam/tf2/tf/cfg/autoexec.cfg

sm_bot_quota 6
sm_bot_join_after_player 1
sm_bot_game_logic 0
sm_bot_supported_map 1
sm_bot_on_team_only 1
EOF
fi
