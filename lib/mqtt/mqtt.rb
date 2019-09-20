require_relative './utilities'

puts 'heeeere'

topics = [
  "blaat" ]


  topics.each do |topic|
    puts "SUBSCRIBE #{topic}"
  end

Thread.new do
  subscribing_to(topics) do |topic, message|
    puts "#{topic} >> #{message}"
    pokemon = Pokemon.new(name: message)
    pokemon.save
    PokemonChannel.broadcast_to( "test" , {message: message})
    

  end
rescue => ex
  puts "fufufufufufufufufuf: #{ ex.message }"
  #puts ex.backtrace[0..16]
end
