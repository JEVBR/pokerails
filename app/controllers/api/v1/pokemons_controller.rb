class Api::V1::PokemonsController < ActionController::Base
  def index
    @pokemons = Pokemon.all
    p @pokemons
    
    render json: @pokemons
  end
end
