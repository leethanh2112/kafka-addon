FROM wurstmeister/kafka
MAINTAINER ThanhCL



# Download agent & config
RUN cd /home
RUN mkdir prometheus

ADD jmx_prometheus_javaagent-0.3.1.jar /home/prometheus/jmx_prometheus_javaagent-0.3.1.jar
ADD kafka-0-8-2.yml /home/prometheus/kafka-0-8-2.yml

ADD server.properties /opt/kafka/config/server.properties

CMD ["start-kafka.sh"]

