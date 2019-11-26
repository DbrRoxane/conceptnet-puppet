FROM ubuntu:16.04

WORKDIR /src

USER root

RUN apt update \
 && apt-get install -y git \
 && git clone https://github.com/commonsense/conceptnet-puppet \
 && cd conceptnet-puppet 
