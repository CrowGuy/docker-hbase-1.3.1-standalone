FROM openjdk:8

ENV HBASE_VERSION 1.3.2

RUN apt-get update
RUN apt-get -y install vim

# Copy and install the Hbase application from local file
ADD http://ftp.mirror.tw/pub/apache/hbase/${HBASE_VERSION}/hbase-${HBASE_VERSION}-bin.tar.gz /
RUN gunzip -c hbase-${HBASE_VERSION}-bin.tar.gz | tar xvf -

# Copy configuration files
ADD ./hbase-site.xml /hbase-1.3.2/conf/hbase-site.xml

# Folder for data
RUN mkdir -p data/hbase
RUN mkdir -p data/zookeeper

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH $PATH:/hbase-${HBASE_VERSION}/bin
