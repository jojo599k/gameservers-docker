FROM steamcmd

USER root

ENV GAME=insurgency2
ENV APP_ID=237410

RUN mkdir -p /steam/${GAME}/.cache/ \
  && touch /steam/${GAME}/.cache/empty
WORKDIR /steam/${GAME}/
COPY . .

RUN chown -R steam /steam/${GAME}/ \
  && mv .cache/* . \
  && rm -fr .cache

USER steam

RUN /steam/steamcmd_linux/steamcmd.sh +login anonymous +force_install_dir /steam/${GAME} +app_update ${APP_ID} +quit
ARG CACHE_DATE
RUN /steam/steamcmd_linux/steamcmd.sh +login anonymous +force_install_dir /steam/${GAME} +app_update ${APP_ID} +quit

ADD default_server_cooperative.cfg /steam/insurgency2/insurgency/cfg/default_server_cooperative.cfg

COPY start.sh \
./

ENTRYPOINT ["./start.sh"]
