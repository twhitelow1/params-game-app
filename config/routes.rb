Rails.application.routes.draw do
  namespace :api do
    get "/game_query" => "gamess#games_action"
  end
end
