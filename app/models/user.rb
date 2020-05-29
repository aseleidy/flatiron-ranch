class User < ApplicationRecord
  has_many :user_games
  has_many :games, through: :user_games

  validates_presence_of :username

  def self.leaderboard
    sorted_points = self.all.sort_by { |user| -user.total_points}
    filtered_points = sorted_points.select { |user| user.total_points > 0}
    filtered_points.first(5)
  end 
end
