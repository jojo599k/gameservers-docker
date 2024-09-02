FROM css-metamod

USER steam

WORKDIR /steam/css/cstrike

COPY --chown=steam download.sh .
RUN ./download.sh 

WORKDIR /steam/css

COPY --chown=steam config/ /steam/css/cstrike/

COPY --chown=steam configure.sh \ 
    configure-deathmatch.sh \
    ./

ENV SV_HOSTNAME="Counterstrike Source (Deathmatch)"

ENTRYPOINT [ "./start.sh" ]
