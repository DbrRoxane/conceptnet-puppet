FROM ubuntu:16.04

WORKDIR /app

USER root

RUN apt update \
 && apt-get install -y git \
 && git clone https://github.com/DbrRoxane/conceptnet-puppet.git \
 && sh conceptnet-puppet/puppet-setup.sh
