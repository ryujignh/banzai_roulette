class TopController < ApplicationController
  before_action :set_auth
  before_filter :restrict_access_home

  protect_from_forgery except: :authorize

  def profile

  end

  def show
    
  end

  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end

  def authorize
    respond_to do |format|
      format.html # authorize.html.erb
    end
  end

end
