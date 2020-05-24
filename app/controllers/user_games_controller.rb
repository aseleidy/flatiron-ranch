class UserGamesController < ApplicationController
  def index 
    user_games = UserGame.all
    render json: user_games
  end 

  def create
    user_game = UserGame.find_or_create_by(params[:id])
    render json: user_game
  end 

end
