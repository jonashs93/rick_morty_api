class CharactersController < ApplicationController

  def show
    render json: { air_date: Character.find(params[:id]).first_episode&.air_date }
  end
end
