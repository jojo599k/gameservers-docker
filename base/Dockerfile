ARG DISTRO="20.04"

FROM ubuntu:${DISTRO}

ARG TZ="Etc/UTC"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -y \
        git \
        unzip \
        p7zip-full\
        curl\
        wget\
        lib32gcc1\
        lib32stdc++6\
        iproute2\
        vim-tiny\
        bzip2\
        jq\
        software-properties-common\
        apt-transport-https\
        rsync \
    && apt-get clean

RUN echo "$TZ" > /etc/timezone \
    && ln -fs /usr/share/zoneinfo/$TZ /etc/localtime
