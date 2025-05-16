#!/bin/bash

export HOSTNAME="${HOSTNAME:-My TF2 Server}"
export SV_CONTACT="${SV_CONTACT:-your@email.com}"
export SV_DOWNLOADURL="${SV_DOWNLOADURL:-auto}"
export LAN="${LAN:-0}"
export MAX_PLAYERS="${MAX_PLAYERS:-24}"
export PAUSABLE="${PAUSABLE:-0}"
export RCON_PASSWORD="${RCON_PASSWORD:-pass1234}"
export SV_VOICEENABLE="${SV_VOICEENABLE:-1}"
export SV_ALLTALK="${SV_ALLTALK:-0}"
export SV_BIRTHDAY="${SV_BIRTHDAY:-1}"

if [ -z $SERVER_TOKEN ]
then
   echo "Warning: No server token supplied" >&2
fi

if [[ $SV_DOWNLOADURL -eq "auto" ]]
then
	INTERFACE=$(ip route | grep default | awk '{print $(NF)}')
	IPADDR=$(ip addr list dev $INTERFACE | grep 'inet ' | egrep -o '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | head -n 1)
	SV_DOWNLOADURL="http://$IPADDR/"
fi

# Config file
[[ -n $SV_DOWNLOADURL ]] && SV_DOWNLOADURL="sv_downloadurl \"$SV_DOWNLOADURL\""

sed -i "s/hostname.\+/hostname ${HOSTNAME}/g" tf/cfg/server.cfg
sed -i "s/sv_contact.\+/sv_contact ${SV_CONTACT}/g" tf/cfg/server.cfg
sed -i "s/sv_downloadurl.\+/sv_downloadurl ${SV_DOWNLOADURL}/g" tf/cfg/server.cfg
sed -i "s/sv_lan.\+/sv_lan ${LAN}/g" tf/cfg/server.cfg
sed -i "s/sv_maxplayers.\+/sv_maxplayers "${MAX_PLAYERS}"/g" tf/cfg/server.cfg
sed -i "s/sv_pausable.\+/sv_pausable ${PAUSABLE}/g" tf/cfg/server.cfg
sed -i "s/rcon_password.\+/rcon_password ${RCON_PASSWORD}/g" tf/cfg/server.cfg
sed -i "s/sv_voiceenable.\+/sv_voiceenable ${SV_VOICEENABLE}/g" tf/cfg/server.cfg
sed -i "s/sv_alltalk.\+/sv_alltalk ${SV_ALLTALK}/g" tf/cfg/server.cfg
sed -i "s/sv_birthday.\+/sv_birthday ${SV_BIRTHDAY}/g" tf/cfg/server.cfg
