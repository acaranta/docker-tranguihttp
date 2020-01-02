FROM jlesage/baseimage-gui:ubuntu-18.04

ENV TRVER=5.18.0

RUN apt-get update && apt-get install -y libgtkextra-dev
RUN mkdir /app
WORKDIR /app
ADD https://github.com/transmission-remote-gui/transgui/releases/download/v$TRVER/transgui-$TRVER-x86_64-Linux.txz /app/transgui.txz
RUN tar Jxvf transgui.txz
ADD startapp.sh /startapp.sh

ENV APP_NAME="TransmissionGUI"

