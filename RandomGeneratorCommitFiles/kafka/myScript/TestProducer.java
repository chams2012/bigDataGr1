import java.util.*;

import org.apache.kafka.clients.producer.*;

public class TestProducer {
    public static void main(String[] args) {
        Properties props = new Properties();
        props.put("bootstrap.servers", "localhost:9092,localhost:9093,localhost:9094");

        props.put("acks", "all");
        props.put("retries", 0);
        props.put("batch.size", 16384);
        props.put("linger.ms", 1);
        props.put("buffer.memory", 33554432);
        props.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer");
        props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer");

        Producer<String, String> producer = new KafkaProducer<String, String>(props);

        Random rand = new Random();
        for(int i = 0; i < 100; i++)
             producer.send(new ProducerRecord<String, String>("topiccommit", Integer.toString(i), Integer.toString(rand.nextInt())));
        producer.close();
    }
}
