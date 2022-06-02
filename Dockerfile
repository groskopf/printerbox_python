#FROM python:3
FROM balenalib/raspberry-pi-debian-python:latest

ENV UDEV=1

RUN apt-get update && apt-get install -y \
    dnsutils \
    cups-bsd \
    cups-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

VOLUME /data
WORKDIR /data

COPY blink/blink1-tool /usr/bin
COPY blink/51-blink1.rules /etc/udev/rules.d/51-blink1.rules
