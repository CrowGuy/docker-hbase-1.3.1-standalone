# docker-hbase-1.3.1-standalone

## Load image
```
docker load < openjdk-8.tar

# check the available images
docker images
```

## Build
```
docker build . -f ./Dockerfile
```

## Tag image name by IMAGE ID
```
docker tag ***IMAGE ID*** esl/hbase:version1.0
```

## Usage
```
docker run -it -p 8080:8080 -p 9090:9090 esl/hbase:version1.0 
```

## Open Thrift service for Hbase
```
./bin/start-hbase.sh
./bin/hbase-daemon.sh start thrift
```
