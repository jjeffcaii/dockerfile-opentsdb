FROM dockerhub.las:8010/zero/java:8
LABEL maintainer wcai@maxleap.com

WORKDIR /usr/share/opentsdb

RUN \
apt-get update -y && \
apt-get install gnuplot -y && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ARG OPENTSDB_VERSION

RUN \
mkdir -p /tmp/opentsdb && \
cd /tmp/opentsdb && \
wget -q https://github.com/OpenTSDB/opentsdb/releases/download/v${OPENTSDB_VERSION}/opentsdb-${OPENTSDB_VERSION}_all.deb && \
dpkg -i *.deb && \
rm -rf *

COPY opentsdb.conf /etc/opentsdb/opentsdb.conf

EXPOSE 4242

ENTRYPOINT [ "bin/tsdb" ]
CMD [ "tsd" ]
