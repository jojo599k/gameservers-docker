FROM base

# Dear srcds, plz don't crash. We have brought you these offerings.
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

RUN useradd -m steam --create-home \
    && mkdir -p /steam/steamcmd_linux \
    && mkdir -p /steam/scripts \
    && chown -R steam /steam

COPY zip-utils.sh /steam/scripts/

USER steam

WORKDIR /steam/steamcmd_linux

RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz \
    && tar -xf steamcmd_linux.tar.gz \
    && ./steamcmd.sh +login anonymous +quit
