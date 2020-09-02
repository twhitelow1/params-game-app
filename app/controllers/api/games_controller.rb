class Api::GamesController < ApplicationController
  def games_action
    url_input = params["name"]
    @output_message = "This is your name: #{url_input}"
    render "games.json.jb"
  end
end
