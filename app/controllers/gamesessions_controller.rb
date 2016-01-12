class GamesessionsController < ApplicationController
 before_filter :restrict_access
  def index
  end

  def new
    @gamesession = Gamesession.new
  end

  def show
    @gamesession = Gamesession.find(params[:id])
  end

  def create
    @gamesession = Gamesession.new(gamesession_params)

    if @gamesession.save
      redirect_to gamessesion_path(1)
    else
      redirect_to gamessession_path(2)
    end
  end

  protected

  def gamesession_params
       params.require(:gamesession).permit(
        :game_id, :user_id)
  end

end
