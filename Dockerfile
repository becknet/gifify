FROM ubuntu:latest

# install Software 
RUN apt-get update
RUN apt-get -y install software-properties-common
RUN apt-get update
RUN apt-get -y install ffmpeg unzip imagemagick curl nodejs npm dh-autoreconf

# install fork of gifsicle with better lossless gif support
RUN curl -OJL https://github.com/pornel/giflossy/releases/download/lossy%2F1.82.1/gifsicle-1.82.1-lossy.zip
RUN unzip gifsicle-1.82.1-lossy.zip -d gifsicle
RUN mv gifsicle/linux/gifsicle-static /usr/local/bin/gifsicle

# install gifify
RUN npm i gifify -g

# run gifify in /data (requires user to mount their source folder in /data)
WORKDIR /data

ENTRYPOINT ["gifify"]
