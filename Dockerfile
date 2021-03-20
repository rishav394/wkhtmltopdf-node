FROM ubuntu:bionic

WORKDIR /usr/src/app

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

COPY wkhtmltox_0.12.6-1.bionic_amd64.deb ./
RUN dpkg -i ./wkhtmltox_0.12.6-1.bionic_amd64.deb ; exit 0
RUN apt-get install -fy

RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_14.x  | bash -
RUN apt-get -y install nodejs
