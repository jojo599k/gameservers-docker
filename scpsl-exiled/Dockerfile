FROM scpsl

ENV CONFIG_DIR '/home/steam/.config/'

USER root

COPY download.sh .
RUN ./download.sh

COPY config.yml "${CONFIG_DIR}/EXILED/Configs/${SERVER_PORT}-config.yml"
RUN chown -R steam:steam "${CONFIG_DIR}" \
  && chmod u+rw "${CONFIG_DIR}" \
  && rm -f *.tar.gz

USER steam

ENTRYPOINT ["./start.sh"]
