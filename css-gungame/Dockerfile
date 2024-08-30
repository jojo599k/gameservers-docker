FROM css-metamod

USER steam

WORKDIR /steam/css/cstrike

COPY download.sh .
RUN ./download.sh 

WORKDIR /steam/css

COPY gungame.config.txt /steam/css/cstrike/cfg/gungame/css/gungame.config.txt
RUN mv configure.sh configure-base.sh
COPY configure.sh .

ENV SV_HOSTNAME="Counterstrike Source (GunGame)"

ENTRYPOINT [ "./start.sh" ]
