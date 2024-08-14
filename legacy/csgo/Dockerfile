FROM steamcmd

USER root

ENV GAME=csgo
ENV APP_ID=740

RUN mkdir -p /steam/${GAME}/.cache/ \
  && touch /steam/${GAME}/.cache/empty
WORKDIR /steam/${GAME}/
COPY .cache .

RUN chown -R steam /steam/${GAME}/ \
  && mv .cache/* . \
  && rm -fr .cache

COPY server.cfg \
configure.sh \
launch.sh \
start.sh \
./

USER steam

RUN /steam/steamcmd_linux/steamcmd.sh +login anonymous +force_install_dir ../${GAME} +app_update ${APP_ID} +quit

ENTRYPOINT ["./start.sh"]
