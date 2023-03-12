FROM alpine:latest

RUN apk add \
    bash \
    ffmpeg \
    lame \
    findutils \
    grep \
    sed \
    jq \
    libmediaart \
    mediainfo

ENTRYPOINT /bin/bash AAXtoMP3