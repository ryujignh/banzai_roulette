class SessionsController < ApplicationController

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    params = request.env["omniauth.params"]
    game_id = params["game_id"]
    redirect_to user, notice: "logged in"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
