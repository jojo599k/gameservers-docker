FROM css-metamod

USER steam

WORKDIR /steam/css/cstrike

ADD download.sh .
RUN ./download.sh 

WORKDIR /steam/css

ADD start.sh .
ADD gungame.config.txt /steam/css/addons/sourcemod/plugins/cfg/gungame/gungame.config.txt

ENTRYPOINT [ "./start.sh" ]
