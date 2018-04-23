# docker-hbase-1.3.2-standalone

## Pull image
```
sudo docker pull openjdk:8

# check the available images
sudo docker images
```

## Build
```
sudo docker build -t hbase-1.3.2 . 
```

## Usage
```
sudo docker run -d -it -p 8080:8080 -p 9090:9090 --name crow-Hbase hbase-1.3.2:latest
```

## Access container with terimal
```
sudo docker exec -it crow-Hbase bash
```

### Set the config for `conf/hbase-env.sh`
```
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
```

### Open Thrift service for Hbase
```
./bin/start-hbase.sh
./bin/hbase-daemon.sh start thrift
```
