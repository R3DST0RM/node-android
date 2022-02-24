FROM ubuntu:20.04
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -

RUN apt-get install -y nodejs
RUN DEBIAN_FRONTEND="noninteractive" TZ="Europe/Berlin" apt-get install -y \
  build-essential \
  android-sdk

