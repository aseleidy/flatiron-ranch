class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :total_points 
  has_many :user_games
end