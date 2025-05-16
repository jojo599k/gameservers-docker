FROM css

ENV TEMP_DIR=/tmp/css/

WORKDIR /steam/css/
USER steam

COPY --chown=steam download.sh ./
RUN ./download.sh

COPY --chown=steam \
    metamod.vdf \
    ./cstrike/ 

COPY --chown=steam \
    config/ \
    configure.sh \
    configure-metamod.sh \
    ./

ENV SV_HOSTNAME="Counterstrike Source (MetaMod)"

ENTRYPOINT [ "./start.sh" ]
