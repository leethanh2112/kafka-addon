FROM wurstmeister/kafka
MAINTAINER ThanhCL

# Download agent & config
RUN mkdir /opt/kafka/prometheus

COPY jmx_prometheus_javaagent-0.3.1.jar /opt/kafka/prometheus/jmx_prometheus_javaagent-0.3.1.jar
COPY kafka-0-8-2.yml /opt/kafka/prometheus/kafka-0-8-2.yml

#COPY start-kafka.sh /usr/bin/start-kafka.sh

#CMD ["start-kafka.sh"]



