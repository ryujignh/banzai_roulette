class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action def allow_iframe_requests
    response.headers.delete('X-Frame-Options')
  end

  def index
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  protected
  def restrict_access
    if params[:invite] == "true"
      if current_user
        Gamesession.create(user_id: current_user.id, game_id: params[:id])
        redirect_to current_user
      else
        flash[:alert] = "You must log in."
        redirect_to root_path invite: true, game_id: params[:id]
      end
    else
      if !current_user
        flash[:alert] = "You must log in."
        redirect_to root_path
      end
    end
  end

  def restrict_access_home
    if params[:invite] == "true"
      if current_user
        Gamesession.create(user_id: current_user.id, game_id: params[:game_id])
        redirect_to current_user
      else
        flash[:alert] = "You must log in."
        redirect_to root_path invite: true, game_id: params[:id]
      end
    else
      if current_user
        redirect_to(current_user, :notice => "Message was successfully sent.")
      end
    end
  end




end


