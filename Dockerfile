FROM wurstmeister/kafka
MAINTAINER ThanhCL

# Download agent & config
cd /home
mkdir prometheus
cd prometheus
wget https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.3.1/jmx_prometheus_javaagent-0.3.1.jar
wget https://raw.githubusercontent.com/prometheus/jmx_exporter/master/example_configs/kafka-0-8-2.yml

ADD server.properties /opt/kafka/config/server.properties

CMD ["start-kafka.sh"]

