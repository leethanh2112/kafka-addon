FROM wurstmeister/kafka
MAINTAINER ThanhCL

# Download agent & config
RUN mkdir /home/prometheus

COPY jmx_prometheus_javaagent-0.3.1.jar /home/prometheus/jmx_prometheus_javaagent-0.3.1.jar
COPY kafka-0-8-2.yml /home/prometheus/kafka-0-8-2.yml

#ADD start-kafka.sh /usr/bin/start-kafka.sh

CMD ["start-kafka.sh"]



