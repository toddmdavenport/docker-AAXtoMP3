FROM alpine:latest

WORKDIR /opt/AAXtoMP3

# dependancies
RUN apk add \
    bash \
    git \
    ffmpeg \
    lame \
    findutils \
    grep \
    sed \
    jq \
    libmediaart \
    mediainfo

RUN git clone https://github.com/KrumpetPirate/AAXtoMP3 /opt/AAXtoMP3



ENTRYPOINT /bin/bash AAXtoMP3