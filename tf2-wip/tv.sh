#!/bin/bash

# TODO figure out TV, I don't use it
#if [[ -n $SOURCETV_ADDR ]]; then
#   echo "tv_title $HOSTNAME" > tf/cfg/hostname.cfg
#   exec ./srcds_run -game tf -debug -ip 0.0.0.0 $MAP -usercon $GAME_MODE $GAME_TYPE $MAXPLAYERS $MAPCYCLEFILE +tv_relay $SOURCETV_ADDRESS $OTHER_ARGS $@
#else