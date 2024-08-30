FROM css

WORKDIR /steam/css/
USER steam
COPY download.sh .
RUN ./download.sh

RUN tar -xf mm*.tar.gz -C cstrike/ && \
	tar -xf sourcemod*.tar.gz -C cstrike/ && \
	mv cstrike/addons/sourcemod/plugins/disabled/mapchooser.smx cstrike/addons/sourcemod/plugins/mapchooser.smx && \
	mv cstrike/addons/sourcemod/plugins/disabled/nominations.smx cstrike/addons/sourcemod/plugins/nominations.smx && \
	mv cstrike/addons/sourcemod/plugins/disabled/randomcycle.smx cstrike/addons/sourcemod/plugins/randomcycle.smx && \
	mv cstrike/addons/sourcemod/plugins/disabled/rockthevote.smx cstrike/addons/sourcemod/plugins/rockthevote.smx

COPY metamod.vdf cstrike/

RUN echo '"$FULL_ADMINS" "@Full Admins"' > cstrike/addons/sourcemod/configs/admins_simple.ini

ENV SV_HOSTNAME="Counterstrike Source (MetaMod)"

ENTRYPOINT [ "./start.sh" ]
