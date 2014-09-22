# Kafka/Avro/Poseidon Example

This repo contains basic code for creating producing and consuming Kafka messages encoded with Avro.

The consumer uses the `poseidon_group` gem to use the high-level group managing API. This allows you to have multiple readers within the same group. Zookeeper also will keep track of your consumers' offsets so that you won't be duplicating data.

## Setup

Install Zookeeper and Kafka. See [quickstart documentation](http://kafka.apache.org/documentation.html#quickstart) for more info.

Create your topic. In this case `example_topic`:

	kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic example_topic

Install gem dependencies:

	bundle install

Run the consumer:

	bundle exec ./consumer
	
Send some messages with the producer:

	bundle exec ./producer