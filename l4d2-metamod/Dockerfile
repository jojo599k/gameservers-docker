FROM l4d2

USER root

WORKDIR /steam/l4d2/
USER steam

# these can't be set as one block as docker does not set them until the command completes
ENV LEFT4DEAD2_DIR="/steam/l4d2/left4dead2"
ENV ADDONS_DIR="${LEFT4DEAD2_DIR}/addons"
ENV SOURCEMOD_DIR="${ADDONS_DIR}/sourcemod"
ENV SOURCEMOD_EXTENSIONS_DIR="${SOURCEMOD_DIR}/extensions"
ENV SOURCEMOD_PLUGINS_DIR="${SOURCEMOD_DIR}/plugins"
ENV TEMP_DIR="/tmp/download"

RUN mkdir -p "${SOURCEMOD_EXTENSIONS_DIR}/" \
    && mkdir -p "${SOURCEMOD_PLUGINS_DIR}/"

COPY download.sh ./
RUN ./download.sh

COPY metamod.vdf left4dead2/
COPY admins_simple.ini "${SOURCEMOD_DIR}/configs/admins_simple.ini"

RUN rm "${SOURCEMOD_PLUGINS_DIR}/nextmap.smx"

ENTRYPOINT ["./start.sh"]
