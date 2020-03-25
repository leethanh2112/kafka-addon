FROM wurstmeister/kafka
MAINTAINER ThanhCL

# Download agent & config
RUN mkdir /opt/kafka/prometheus

COPY jmx_prometheus_javaagent-0.3.1.jar /opt/kafka/prometheus/jmx_prometheus_javaagent-0.3.1.jar
COPY kafka-0-8-2.yml /opt/kafka/prometheus/kafka-0-8-2.yml

RUN KAFKA_OPTS="-javaagent:/opt/kafka/prometheus/jmx_prometheus_javaagent-0.3.1.jar=7071:/opt/kafka/prometheus/kafka-0-8-2.yml" \
./usr/bin/start-kafka.sh

EXPOSE 7071 9092




