FROM steamcmd

USER root

ENV GAME=l4d2
ENV APP_ID=222860

WORKDIR /steam/${GAME}/

RUN chown -R steam /steam/${GAME}/

USER steam

RUN /steam/steamcmd_linux/steamcmd.sh +login anonymous +force_install_dir /steam/${GAME} +app_update ${APP_ID} +quit
ARG CACHE_DATE
RUN /steam/steamcmd_linux/steamcmd.sh +login anonymous +force_install_dir /steam/${GAME} +app_update ${APP_ID} +quit

COPY configure.sh \
    start.sh ./
COPY server.cfg left4dead2/cfg/

USER root
RUN chown steam:steam left4dead2/cfg/server.cfg
USER steam

ENTRYPOINT ["./start.sh"]
