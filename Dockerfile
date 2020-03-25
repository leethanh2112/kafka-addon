FROM wurstmeister/kafka
MAINTAINER ThanhCL

# Download agent & config
RUN mkdir /home/prometheus

COPY jmx_prometheus_javaagent-0.3.1.jar /home/prometheus/jmx_prometheus_javaagent-0.3.1.jar
COPY kafka-0-8-2.yml /home/prometheus/kafka-0-8-2.yml

ADD server.properties /opt/kafka/config/server.properties

CMD ["start-kafka.sh"]



