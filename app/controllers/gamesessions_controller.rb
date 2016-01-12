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
      redirect_to game_gamesession_path
    else
      render :new
    end
  end

  def update
    @gamesession = Gamesession.find(params[:id])
    if @gamesession.update_attribute(:joined, params[:joined])
      if params[:joined] === 'false'
        redirect_to current_user
      else
        redirect_to("/games/#{@gamesession.game_id}")
      end
    else
    
    end
  end


  protected

  def gamesession_params
       params.require(:gamesession).permit(
        :game_id, :user_id, :joined)
  end

end
