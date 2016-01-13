class GamesessionsController < ApplicationController
 before_filter :restrict_access

  def index
    @gamesessions = Gamesession.all

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
    puts "#{params[:word]}test2"
    if params[:joined]
      if @gamesession.update_attribute(:joined, params[:joined])
        if params[:joined] === 'false'
          redirect_to current_user
        else
          redirect_to("/games/#{@gamesession.game_id}")
        end
      end
    end

    if params[:word]
      puts "#{params[:word]}test"
      if @gamesession.update_attribute(:word, params[:word])
        redirect_to("/games/#{@gamesession.game_id}")
      end
    end


  end


  protected

  def gamesession_params
       params.require(:gamesession).permit(
        :game_id, :user_id, :joined)
  end

end
