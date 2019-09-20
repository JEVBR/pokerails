class PokemonChannel < ApplicationCable::Channel
  def subscribed
    stream_for "test"
    puts "fgtergvbvbvbbcvbcvbcvbvb"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
  