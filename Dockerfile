FROM openjdk:8

ENV HBASE_VERSION 1.3.1

# Copy and install the Hbase application from local file
COPY hbase-1.3.1-bin.tar.gz /

RUN gunzip -c hbase-1.3.1-bin.tar.gz | tar xvf -

# Copy configuration files
ADD ./hbase-site.xml /hbase-1.3.1/conf/hbase-site.xml
ADD ./hbase-env.sh /hbase-1.3.1/conf/hbase-env.sh

RUN mkdir -p data/hbase
RUN mkdir -p data/zookeeper
