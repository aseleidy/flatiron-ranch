Rails.application.routes.draw do
  resources :user_games
  get '/users/leaderboard', to: 'users#leaderboard', as: 'leaderboard'
  resources :users
  resources :games
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
