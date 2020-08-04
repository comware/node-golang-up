FROM golang:1.14

RUN \
  apt-get update -y && \
  apt-get install nodejs npm -y && \
  curl -sf https://up.apex.sh/install | BINDIR=/usr/local/bin sh

RUN \
  up upgrade && \
  up version

