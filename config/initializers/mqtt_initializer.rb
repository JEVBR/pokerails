

require_relative '../../lib/mqtt/mqtt.rb'


Rails.application.config.after_initialize do

puts "Start MQTT"


    # puts "Start the MQTT listener"
    # #MqttJob.disconnected
    # MqttJob.connect
    # MqttJob.subscribe
end
