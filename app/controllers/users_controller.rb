class UsersController < ApplicationController
 before_filter :restrict_access
  def index
  end

  def show
    @user = User.find(params[:id])
    @games = @user.games
    @gamesessions = Gamesession.select("users.first_name, users.last_name, gamesessions.*, games.*")
    .joins("LEFT OUTER JOIN games ON games.id = gamesessions.game_id")
    .joins("LEFT OUTER JOIN users ON games.user_id = users.id")
    .where("gamesessions.user_id = #{current_user.id} and joined = true")
    @gameinvites = Gamesession.where("user_id = #{current_user.id} and joined is null")
  end

end
