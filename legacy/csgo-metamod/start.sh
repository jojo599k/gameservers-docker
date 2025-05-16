#!/bin/bash

echo "$FULL_ADMINS" "@Full Admins" > csgo/addons/sourcemod/configs/admins_simple.ini

./configure.sh
./launch.sh
