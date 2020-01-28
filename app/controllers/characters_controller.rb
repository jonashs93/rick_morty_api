class CharactersController < ApplicationController

  def show
    render json: { air_date: Character.find(params[:id]).first_episode_air_date }
  end
end
