#!/bin/bash
KAFKA_OPTS="-javaagent:/opt/kafka/prometheus/jmx_prometheus_javaagent-0.3.1.jar=7071:/opt/kafka/prometheus/kafka-0-8-2.yml" /opt/kafka_2.12-2.4.1/bin/kafka-server-start.sh -daemon /opt/kafka/config/server.properties