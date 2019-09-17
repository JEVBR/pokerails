class PokemonChannel < ApplicationCable::Channel
  def subscribed
    stream_from "PokemonChannel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
