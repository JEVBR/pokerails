class Api::V1::PokemonsController < ActionController::Base
  def index
    @pokemons = Pokemon.all
    render json: @pokemons
  end
end
