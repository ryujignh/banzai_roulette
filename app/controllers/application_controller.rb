class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  protected
    def restrict_access
      if !current_user
        flash[:alert] = "You must log in."
        redirect_to root_path
      end
    end

    def restrict_access_home
      if current_user
        redirect_to(current_user, :notice => "Message was successfully sent.")
      end
    end

end


