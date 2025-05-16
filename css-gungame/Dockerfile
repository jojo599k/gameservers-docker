FROM css-deathmatch

USER steam

WORKDIR /steam/css

COPY --chown=steam download.sh .
RUN ./download.sh 

COPY --chown=steam \
    config/ \
    configure.sh \ 
    configure-gungame.sh \
    ./

ENV SV_HOSTNAME="Counterstrike Source (GunGame)"

ENTRYPOINT [ "./start.sh" ]
