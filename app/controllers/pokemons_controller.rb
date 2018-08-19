class PokemonsController < ApplicationController

  def index
    render json: { pokemons: pokemons_as_json }
  end

  private

  def find_all_pokemons
    Pokemon.all
  end

  def pokemons_as_json
    find_all_pokemons.as_json(only: pokemon_json_attributes)
  end

  def pokemon_json_attributes
    [:name, :poke_type]
  end
end
