FROM steamcmd

USER root

ENV GAME=tf2
ENV APP_ID=232250

WORKDIR /steam/${GAME}/
RUN chown -R steam /steam/${GAME}/

USER steam

RUN /steam/steamcmd_linux/steamcmd.sh +login anonymous +force_install_dir /steam/${GAME} +app_update ${APP_ID} +quit
ARG CACHE_DATE
RUN /steam/steamcmd_linux/steamcmd.sh +login anonymous +force_install_dir /steam/${GAME} +app_update ${APP_ID} +quit

RUN mkdir -p /steam/${GAME}/tf/cfg/

COPY configure.sh \
    start.sh \
    ./
COPY server.cfg \
    mapcycle.txt \
    motd.txt \
    ./tf/cfg/

USER root
RUN chown steam:steam tf/cfg/ * \
    && mkdir -p /home/steam/.steam/sdk32/ \
    && ln -s /steam/steamcmd_linux/linux32/steamclient.so /home/steam/.steam/sdk32/

USER steam

ENTRYPOINT ["./start.sh"]
