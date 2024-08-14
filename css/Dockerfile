FROM steamcmd

ENV GAME=css
ENV APP_ID=232330

WORKDIR /steam/${GAME}/

USER root
RUN chown -R steam /steam/${GAME}/
USER steam

RUN /steam/steamcmd_linux/steamcmd.sh +login anonymous +force_install_dir /steam/${GAME} +app_update ${APP_ID} +quit
ARG CACHE_DATE
RUN /steam/steamcmd_linux/steamcmd.sh +login anonymous +force_install_dir /steam/${GAME} +app_update ${APP_ID} +quit

COPY start.sh \
./

ENTRYPOINT ["./start.sh"]
