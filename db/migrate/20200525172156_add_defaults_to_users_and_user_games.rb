class AddDefaultsToUsersAndUserGames < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :total_points, :integer, :default => 0
    change_column :user_games, :num_answered, :integer, :default => 0
    change_column :user_games, :num_correct, :integer, :default => 0
  end
end
