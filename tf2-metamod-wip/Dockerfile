FROM tf2

WORKDIR /steam/tf2/
USER steam

COPY download.sh ./

RUN ./download.sh

RUN tar -xf mm*.tar.gz -C tf/ 
RUN tar -xf sourcemod*.tar.gz -C tf/

COPY metamod.vdf tf/

ENTRYPOINT [ "./start.sh" ]
