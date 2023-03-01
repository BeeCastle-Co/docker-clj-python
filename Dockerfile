FROM clojure:temurin-11-lein-bullseye
MAINTAINER Hamish Rickerby <hamish@beecastle.com>
LABEL version="0.1.4"

RUN apt-get update
RUN apt-get install curl libpython3-dev python3-pip unzip zip -y
RUN pip3 install matplotlib numpy pandas scikit-learn awscli
RUN curl https://download.newrelic.com/newrelic/java-agent/newrelic-agent/7.11.0/newrelic-java.zip -o newrelic-java.zip
RUN unzip newrelic-java.zip && rm newrelic-java.zip
