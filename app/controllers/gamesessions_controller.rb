class GamesessionsController < ApplicationController
 before_filter :restrict_access

  def index
  end

  def new
    @gamesession = Gamesession.new
  end

  def show
    @gamesession = Gamesession.find(params[:id])
    @players = @gamesession.users
  end

  def create
    @gamesession = Gamesession.new(gamesession_params)

    if @gamesession.save
      redirect_to game_gamesession_path, notice: "#{@movie.title} was submitted successfully!"
    else
      render :new
    end
  end

  protected

  def gamesession_params
       params.require(:gamesession).permit(
        :game_id, :user_id)
  end

end
