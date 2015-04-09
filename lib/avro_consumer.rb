require 'avro'

class AvroConsumer < SimpleKafkaConsumer::Consumer
  def parse(message)
    data = StringIO.new(message.value)
    Avro::DataFile::Reader.new(data, Avro::IO::DatumReader.new)
  end
end