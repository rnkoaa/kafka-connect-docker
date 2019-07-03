$ curl -X POST -H "Content-Type: application/json" --data '{"name": "distributed-psql-source", "config": {"connector.class":"io.confluent.connect.jdbc.JdbcSourceConnector", "tasks.max":"2", "connection.url":"jdbc:postgresql://192.168.99.100:5432/connect_test?user=postgres&password=postgres", "mode":"timestamp+incrementing", "timestamp.column.name":"modified", "incrementing.column.name":"id", "topic.prefix":"psql" }}' http://localhost:8083/connectors
{"name":"distributed-psql-source","config":{"connector.class":"io.confluent.connect.jdbc.JdbcSourceConnector","tasks.max":"2","connection.url":"jdbc:postgresql://192.168.99.100:5432/connect_test?user=postgres&password=postgres","mode":"timestamp+incrementing","timestamp.column.name":"modified","incrementing.column.name":"id","topic.prefix":"psql","name":"distributed-psql-source"},"tasks":[{"connector":"distributed-psql-source","task":0},{"connector":"distributed-psql-source","task":1}]}


curl -X POST -H "Content-Type: application/json" --data '{"name": "distributed-psql-source", "config": {"connector.class":"io.confluent.connect.jdbc.JdbcSourceConnector", "tasks.max":"2", "connection.url":"jdbc:postgresql://postgres:5432/connect_test?user=postgres&password=postgres", "mode":"timestamp+incrementing", "timestamp.column.name":"modified", "incrementing.column.name":"id", "topic.prefix":"psql" }}' http://localhost:8083/connectors

kafka-console-consumer --bootstrap-server kafka:19092 --topic psqlmovies --from-beginning

kafka-avro-console-consumer \
      --bootstrap-server kafka:19092 \
      --property schema.registry.url=http://schema-registry:8081 \
      --topic psqlmovies --from-beginning --property print.key=true

15000
16000
{
  "name": "datagen-previews",
  "connector.class": "",
  "key.converter": "",
  "kafka.topic": "pageviews",
  "max.interval": "",
  "iterations": "",
  "quickstart": ""
}
