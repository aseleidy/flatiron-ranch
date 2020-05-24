class UsersController < ApplicationController
  def index 
    users = User.all 
    render json: users 
  end 

  def create 
    user = User.find(param[:id])
    render json: user
  end


end
