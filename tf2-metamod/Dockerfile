FROM gameservers/teamfortress2

USER steamsrv

RUN /home/steamsrv/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steamsrv/tf2/ +app_update 232250 +quit
ARG CACHE_DATE
RUN /home/steamsrv/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steamsrv/tf2/ +app_update 232250 +quit

COPY download.sh \
plugins.sh \
./

RUN ./download.sh

RUN mkdir tf/ \
  && tar -xf mm*.tar.gz -C tf/ \
  && tar -xf sourcemod*.tar.gz -C tf/

COPY metamod.vdf tf/

ENTRYPOINT [ "./run_srcds_server" ]
