class Api::GamesController < ApplicationController
  def games_action
    @name = params["name"]
    if @name[0].downcase == "a"
      @output_message = "Your name starts with the first letter of the alphabet."
    else
      @output_message = "Your name isnt special."
    end
    render "games.json.jb"
  end
end
