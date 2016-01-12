class UsersController < ApplicationController
 before_filter :restrict_access
  def index
  end

  def show
    @user = User.find(params[:id])
    @games = @user.games
    @gameinvites = Gamesession.where("user_id = #{current_user.id} and joined is null")
  end

end


