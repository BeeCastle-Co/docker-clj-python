FROM clojure:openjdk-11-lein
MAINTAINER Hamish Rickerby <hamish@beecastle.com>
LABEL version="0.1.1"

RUN apt-get update
RUN apt-get install libpython3.7-dev python3-pip -y
RUN pip3 install matplotlib numpy pandas sklearn
RUN curl -O https://download.newrelic.com/newrelic/java-agent/newrelic-agent/current/newrelic-java.zip
RUN unzip newrelic-java.zip && rm newrelic-java.zip
