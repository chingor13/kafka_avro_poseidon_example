zookeeper-server-start.sh zookeeper.properties

kafka-server-start.sh server.properties 

kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic example_topic

bundle install

bundle