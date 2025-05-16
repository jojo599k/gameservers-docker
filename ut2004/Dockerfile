FROM base

RUN dpkg --add-architecture i386 \
  && apt-get update \
  && apt-get install -y libstdc++5:i386 \
  && apt-get clean \
  && mkdir ut2004

WORKDIR ut2004

COPY download.sh .
RUN ./download.sh

COPY start.sh .

ENTRYPOINT ["./start.sh"]
