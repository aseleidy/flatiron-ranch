class UserGamesController < ApplicationController
  def index 
    user_games = UserGame.all
    render json: user_games
  end 

  def show 
    user_game = UserGame.find(params[:id])
    render json: user_game
  end 

  def update 
    user_game = UserGame.find(params[:id])
    user_game.update({num_answered: params[:num_answered], num_correct: params[:num_correct]})
    render json: user_game
  end 

  def create
    user_game = UserGame.create({user_id: params[:user_id], game_id: params[:game_id]})
    render json: user_game
  end 

end
