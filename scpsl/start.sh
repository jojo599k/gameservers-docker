#!/bin/bash

set -e
set -u

export CONFIG_DIR="/SCP Secret Laboratory/config/${SERVER_PORT}"

mkdir -p "${CONFIG_DIR}" \
  && cp -r config_gameplay.txt "${CONFIG_DIR}/config_gameplay.txt" \
  && cp -r config_remoteadmin.txt "${CONFIG_DIR}/config_remoteadmin.txt"

DATE_ACCEPTED=$(date -u +"%Y-%m-%dT%H:%M:%S.%NZ")

cat <<EOF >/home/steam/.config/SCP\ Secret\ Laboratory/config/localadmin_internal_data.json
{"GitHubPersonalAccessToken":null,"EulaAccepted":"${DATE_ACCEPTED}","PluginManagerWarningDismissed":false,"LastPluginAliasesRefresh":null,"PluginVersionCache":{},"PluginAliases":{}}
EOF

./LocalAdmin ${SERVER_PORT} -d
