class GamesController < ApplicationController
 before_filter :restrict_access
  def index
  end

  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
    @gamesessions = @game.gamesessions
    @word = @gamesessions.pluck(:word).sample
    @players = User.select('DISTINCT users.*, gamesessions.id as gs_id, gamesessions.word')
    .joins("LEFT OUTER JOIN gamesessions ON users.id = gamesessions.user_id")
    .where("gamesessions.id IN (select gamesessions.id from gamesessions where game_id = #{@game.id} AND gamesessions.joined = true)")
    @current_user_session = Gamesession.find(@players.find(current_user).gs_id)
    puts @current_user_session
  end

  def create
    @game = Game.new(game_params)
    @game.user_id = current_user.id
    if @game.save
      redirect_to game_path(@game.id), notice: "#{@game.round_number} was submitted successfully!"
      Gamesession.create(user_id: current_user.id, game_id: @game.id, joined: 1)
    else
      render :new
    end
  end

  protected

  def game_params
    params.require(:game).permit(
      :name, :round_number, :round_open, :word, :players
    )
  end


end
