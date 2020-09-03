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

  def number_action
    number = params["number"].to_i
    if number == 50
      @output_message = "Good Job! #{number} is the right number!"
    elsif number > 50
      @output_message = "#{number} is to high please guess again."
    else
      @output_message = "#{number} is to low please guess again."
    end
    render "number_game.json.jb"
  end
end
