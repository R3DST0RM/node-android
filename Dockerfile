FROM ubuntu:20.04
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -

RUN apt-get install -y nodejs
RUN DEBIAN_FRONTEND="noninteractive" TZ="Europe/Berlin" apt-get install -y \
  build-essential \
  android-sdk \
  wget

ENV ANDROID_HOME=/usr/lib/android-sdk
RUN wget https://dl.google.com/android/repository/commandlinetools-linux-8092744_latest.zip
RUN unzip commandlinetools-linux-8092744_latest.zip -d cmdline-tools
RUN mv cmdline-tools $ANDROID_HOME/
ENV PATH=$ANDROID_HOME/cmdline-tools/cmdline-tools/bin:$PATH

RUN yes | sdkmanager "platform-tools" "platforms;android-29"