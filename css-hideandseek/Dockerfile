FROM css-metamod

USER steam

WORKDIR /steam/css/cstrike

COPY download.sh .
RUN ./download.sh && \
	unzip sm_hideandseek.zip

WORKDIR /steam/css

ENV SV_HOSTNAME="Counterstrike Source (Hide and Seek)"

ENTRYPOINT [ "./start.sh" ]
