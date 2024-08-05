#! /bin/bash

curl -o sm_gungame.zip 'https://forums.alliedmods.net/attachment.php?attachmentid=133712&d=1400696532'
curl -o sm_ggdm-1.8.0.zip 'https://forums.alliedmods.net/attachment.php?attachmentid=108943&d=1346584450'
unzip sm_gungame.zip
unzip sm_ggdm-1.8.0.zip

curl -o bot_endround.smx 'https://www.sourcemod.net/vbcompiler.php?file_id=45192'
mv bot_endround.smx addons/sourcemod/plugins/bot_endround.smx
