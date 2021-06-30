FROM alpine:latest
MAINTAINER rbushner
WORKDIR /mqtt-launcher
RUN apk update && \
    apk add mplayer mosquitto-clients python3 && \
    ln -sf python3 /usr/bin/python && \
    python3 -m ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools paho-mqtt
COPY volume/ ./
ENTRYPOINT [ "/mqtt-launcher/mqtt-launcher.py" ]
