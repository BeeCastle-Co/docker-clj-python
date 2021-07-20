FROM clojure:openjdk-11-lein
MAINTAINER Hamish Rickerby <hamish@beecastle.com>

RUN apt-get update
RUN apt-get install libpython3.7-dev python3-pip -y
RUN pip3 install matplotlib numpy pandas sklearn
