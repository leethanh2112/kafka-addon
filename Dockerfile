FROM wurstmeister/kafka
MAINTAINER ThanhCL

# Download agent & config
RUN mkdir /opt/kafka/prometheus

COPY jmx_prometheus_javaagent-0.3.1.jar /opt/kafka/prometheus/jmx_prometheus_javaagent-0.3.1.jar
COPY kafka-0-8-2.yml /opt/kafka/prometheus/kafka-0-8-2.yml

COPY kafka-start.sh /opt/kafka/prometheus/kafka-start.sh
RUN chmod 755 /opt/kafka/prometheus/kafka-start.sh

CMD ["/opt/kafka/prometheus/./kafka-start.sh"]



