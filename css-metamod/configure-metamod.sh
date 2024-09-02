#!/bin/sh

./configure-base.sh

echo '"$FULL_ADMINS" "@Full Admins"' > cstrike/addons/sourcemod/configs/admins_simple.ini
