FROM ubuntu:18.04

RUN apt-get update -y \
    && apt-get install -y \
    software-properties-common \
    wget \
    locales \
    default-jre

RUN locale-gen en_AU.UTF-8

RUN mkdir /opt/panoply
WORKDIR /opt/panoply

RUN wget https://www.giss.nasa.gov/tools/panoply/download/PanoplyJ-4.12.9.tgz \
    && tar -xvzf /opt/panoply/PanoplyJ-4.12.9.tgz

ENTRYPOINT /opt/panoply/PanoplyJ/panoply.sh
