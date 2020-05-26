class User < ApplicationRecord
  has_many :user_games
  has_many :games, through: :user_games

  validates_presence_of :username
  validates_uniqueness_of :username
end
