# require 'mqtt'
# require 'yaml'
# require 'json'
# require 'base64'

# class MqttJob
#   @@mqttconnected = false

# def self.connect
#   begin
#     if !@@mqttconnected
#       puts "connecting"
#       @client = MQTT::Client.connect('broker.mqttdashboard.com', 1883)
#     else
#       puts "already connected"
#     end
#   rescue MQTT::ProtocolException => e
#     puts "Client thgggggread error "
#     p e
#   end
# end

# def self.subscribe
#   @client.publish('jevbr', 'nopayload', retain=false)
#         #client.subscribe( 'jevbr' )
#   @client.subscribe( 'blaat' )
#   Thread.new do
#     @client.get do |topic, message|
#       puts "Data recieved"
#       MqttStore.store(topic: topic, message: message)
#     rescue MQTT::ProtocolException => e
#       puts "ershgadfhgdfgdfgdfgsdfgsfd"
#       p e
#     end

#   rescue MQTT::ProtocolException => e
#     puts "Client thread error "
#     p e
#   end
# end

#   def self.connected
#     @mqttconnected = true
#     p "sadasdsadasdasdasdas"
#   end

#   def self.disconnected
#     @mqttconnected = false
#     p "adsffsdffdsf"
#   end
# end

# class MqttStore
#   def self.store(args)
#     Thread.new do
#       puts "Storing data: Topic : #{args[:topic]} msg : #{args[:message]}"
#       pokemon = Pokemon.new(name: args[:message])
#       pokemon.save
#     end
#   end
# end
