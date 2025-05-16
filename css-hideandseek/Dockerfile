FROM css-metamod

USER steam

WORKDIR /steam/css/cstrike

COPY --chown=steam download.sh \ 
    configure.sh \
    ./
RUN ./download.sh

WORKDIR /steam/css

ENV SV_HOSTNAME="Counterstrike Source (Hide and Seek)"

ENTRYPOINT [ "./start.sh" ]
