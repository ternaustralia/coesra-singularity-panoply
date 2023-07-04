FROM ubuntu:18.04

RUN apt update -y
RUN apt-get update -y 
RUN apt-get install -y software-properties-common wget locales default-jre
RUN locale-gen en_AU.UTF-8

RUN mkdir /opt/panoply
WORKDIR /opt/panoply
RUN wget https://www.giss.nasa.gov/tools/panoply/download/PanoplyJ-5.2.8.tgz
RUN tar -xvzf /opt/panoply/PanoplyJ-5.2.8.tgz

ENTRYPOINT /opt/panoply/PanoplyJ/panoply.sh