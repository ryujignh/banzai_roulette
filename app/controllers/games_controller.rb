class GamesController < ApplicationController
 before_filter :restrict_access
  def index
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to games_path, notice: "#{@game.round} was submitted successfully!"
    else
      render :new
    end
  end



end
