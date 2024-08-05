FROM steamcmd

# Dear srcds, plz don't crash. We have brought you these offerings.
USER root
RUN dpkg --add-architecture i386 \
  && apt-get update \
  && apt-get install -y \
    libstdc++6:i386 \
    libcurl3-gnutls-dev:i386 \
    libcurl4-gnutls-dev:i386 \
    libstdc++6:i386 \
    libncurses5:i386 \
    libtinfo5:i386 \
    gdb:i386

ENV GAME=tf2
ENV APP_ID=232250

WORKDIR /steam/${GAME}/
RUN chown -R steam /steam/${GAME}/

USER steam

RUN /steam/steamcmd_linux/steamcmd.sh +login anonymous +force_install_dir /steam/${GAME} +app_update ${APP_ID} +quit

COPY configure.sh \
launch.sh \
start.sh \
./

ARG CACHE_DATE
RUN /steam/steamcmd_linux/steamcmd.sh +login anonymous +force_install_dir /steam/${GAME} +app_update ${APP_ID} +quit

ENTRYPOINT ["./start.sh"]
