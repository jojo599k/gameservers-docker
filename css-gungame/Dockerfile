FROM css-metamod

USER steam

WORKDIR /steam/css/cstrike

COPY download.sh .
RUN ./download.sh 

WORKDIR /steam/css

COPY gungame.config.txt /steam/css/addons/sourcemod/plugins/cfg/gungame/gungame.config.txt

RUN echo -e "mp_ignore_round_win_conditions 1 " >> /steam/css/cstrike/cfg/server.cfg

ENV SV_HOSTNAME="Counterstrike Source (GunGame)"

ENTRYPOINT [ "./start.sh" ]
