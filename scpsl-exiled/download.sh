#!/bin/bash

set -e

# https://github.com/Exiled-Team/EXILED/releases

curl -LO 'https://github.com/Exiled-Team/EXILED/releases/download/8.9.11/Exiled.tar.gz'
tar -xzvf Exiled.tar.gz
cp -r EXILED "${CONFIG_DIR}"
rm -fr EXILED

# https://github.com/Exiled-Team/Common-Utils
 curl -LO 'https://github.com/Exiled-Team/Common-Utils/releases/download/7.1.1/Common.Utilities.dll'

# https://github.com/Michal78900/RespawnTimer
 curl -LO 'https://github.com/Michal78900/RespawnTimer/releases/download/v4.0.4/RespawnTimer.dll'

# https://github.com/babyboucher/RPNames
 curl -LO 'https://github.com/1EnesBaturKaza/RPNames/releases/download/v2.2.0/RPNames.dll'

# https://github.com/DGvagabond/SCP-008-X
curl -LO 'https://github.com/DGvagabond/SCP-008-X/releases/download/3.1.2/SCP008X.dll'

mkdir -p "${CONFIG_DIR}/EXILED/Plugins/"
mv *.dll "${CONFIG_DIR}/EXILED/Plugins/"
