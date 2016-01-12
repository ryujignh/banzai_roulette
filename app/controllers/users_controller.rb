class UsersController < ApplicationController
 before_filter :restrict_access
  def index
  end

  def show
    @user = User.find(params[:id])
    @games = @user.games
    @gamesessions = Gamesession.select("users.first_name, users.last_name, gamesessions.*")
    .joins("LEFT OUTER JOIN users ON users.id = gamesessions.user_id")
    .where("gamesessions.user_id = #{current_user.id} and joined = true")
    @gameinvites = Gamesession.where("user_id = #{current_user.id} and joined is null")
  end

end
