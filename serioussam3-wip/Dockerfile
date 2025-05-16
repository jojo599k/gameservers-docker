FROM steamcmd

USER root

ENV GAME=ss3
ENV APP_ID=41080

USER steam

RUN /steam/steamcmd_linux/steamcmd.sh +login anonymous +force_install_dir ../${GAME} +app_update ${APP_ID} +quit

ENTRYPOINT ["./start.sh"]
