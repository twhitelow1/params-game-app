Rails.application.routes.draw do
  namespace :api do
    get "/game_query" => "games#games_action"
  end
end
