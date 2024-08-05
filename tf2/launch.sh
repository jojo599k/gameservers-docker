#!/bin/bash

if [[ -n $SOURCETV_ADDR ]]; then
   echo "tv_title $HOSTNAME" > tf/cfg/hostname.cfg
   exec ./srcds_run -game tf -debug +sv_lan $LAN -ip 0.0.0.0 $MAP -usercon $GAME_MODE $GAME_TYPE $MAXPLAYERS $MAPCYCLEFILE +tv_relay $SOURCETV_ADDRESS $OTHER_ARGS $@
else
   exec ./srcds_run -game tf -debug +sv_lan $LAN -ip 0.0.0.0 $MAP -usercon $GAME_MODE $GAME_TYPE $MAXPLAYERS $MAPCYCLEFILE $OTHER_ARGS $@
fi