Rails.application.routes.draw do
  namespace :api do
    get "/game_query" => "games#games_action"
    get "/number_game/:number" => "games#number_action"
  end
end
