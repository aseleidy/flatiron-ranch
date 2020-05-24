# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
UserGame.destroy_all
Game.destroy_all

user1 = User.create(username: "aseleidy", total_points: 0);
user2 = User.create(username: "auz", total_points: 0);

game1 = Game.create

user_game1 = UserGame.create(user_id: user2.id, game_id: game1.id, num_answered: 0, num_correct: 0)

UserGame.first.update(num_answered: 1)