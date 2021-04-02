#FROM python:3
FROM balenalib/raspberry-pi-debian-python:latest

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get install -y \
    dnsutils \
    cups-bsd \
    cups-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

VOLUME /data
WORKDIR /data

# FIXME remove
COPY label.pdf label.pdf
