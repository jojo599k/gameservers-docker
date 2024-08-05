#!/bin/bash

if [[ -n $PLUGIN_BOT_MANAGER ]]; then
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
