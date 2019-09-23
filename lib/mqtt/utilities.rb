# A few helper methods for simplifying MQTT connections to Adafruit IO in Ruby scripts.

# gem install mqtt
require 'mqtt'
require 'securerandom'

USER     = ENV['IO_USERNAME']
PASS     = ENV['IO_KEY']

URL      = 'io.adafruit.com'
PROTOCOL = 'mqtts'
PORT     = 8883

def get_client_connection
  # uri = "#{PROTOCOL}://#{USER}:#{PASS}@#{URL}"

  # if options[:uri]
  #   uri = options[:uri]
  #   options.delete(:uri)
  # end

  # puts "CONNECT TO #{ uri.gsub(/:[^@]+@/, ':xxxxxxxxxx@') }"
  MQTT::Client.connect('broker.mqttdashboard.com', 1883)
  # MQTT::Client.connect(uri, PORT, { ack_timeout: 10, client_id: "io-mqtt-" + SecureRandom.hex(4) }.merge(options))
end

def with_client_connection
  begin
    yield get_client_connection

  rescue MQTT::ProtocolException => ex
    puts "LOST MQTT CONNECTION IN child PROCESS #{ Process.pid }"

    # disconnected, sleep, reconnect and retry in around 10 seconds
    sleep(8 + rand(5))

    retry
  rescue => ex
    puts "unexpected error in client connection block: #{ ex.message }"
    puts ex
  end
end

def subscribing_to(topics, client_options={})
  with_client_connection do |client|
    client.get(Hash[ topics.map {|t| [t, 1]} ]) do |topic, message|
      yield topic, message
    end
  end
end

# def subscribing_to(topics, client_options={})
#   with_client_connection
#   client.subscribe( 'blaat' )
#   Thread.new do
#     client.get do |topic, message|
#       puts "Data recieved"
#       MqttStore.store(topic: topic, message: message)
#     rescue MQTT::ProtocolException => e
#       puts "ershgadfhgdfgdfgdfgsdfgsfd"
#       p e
#      end
#   end
# end




# Thread.new do
#     @client.get do |topic, message|
#       puts "Data recieved"
#       MqttStore.store(topic: topic, message: message)
#     rescue MQTT::ProtocolException => e
#       puts "ershgadfhgdfgdfgdfgsdfgsfd"
#       p e
#     end
