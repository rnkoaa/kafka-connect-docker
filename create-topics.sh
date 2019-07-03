#!/bin/sh

docker run \
  --net=fit_fit \
  --rm \
  confluentinc/cp-kafka:5.2.2 \
  kafka-topics --create --topic quickstart-avro-offsets --partitions 1 --replication-factor 1 --if-not-exists --zookeeper zookeeper:2181

docker run \
  --net=fit_fit \
  --rm \
  confluentinc/cp-kafka:5.2.2 \
  kafka-topics --create --topic quickstart-avro-config --partitions 1 --replication-factor 1 --if-not-exists --zookeeper zookeeper:2181

docker run \
  --net=fit_fit \
  --rm \
  confluentinc/cp-kafka:5.2.2 \
  kafka-topics --create --topic quickstart-avro-status --partitions 1 --replication-factor 1 --if-not-exists --zookeeper zookeeper:2181

docker run \
  --net=fit_fit \
  --rm \
  confluentinc/cp-kafka:5.2.2 \
  kafka-topics --describe --zookeeper zookeeper:2181


