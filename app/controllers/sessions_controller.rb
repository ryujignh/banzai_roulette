class SessionsController < ApplicationController

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    params = request.env["omniauth.params"]
    game_id = params["game_id"]
    if game_id
      Gamesession.create(user_id: user.id, game_id: game_id)
      redirect_to "/games/#{game_id}"
    else
      redirect_to user, notice: "logged in"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
