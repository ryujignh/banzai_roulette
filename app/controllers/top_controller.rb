class TopController < ApplicationController
  before_action :set_auth
  before_filter :restrict_access_home 

  def profile

  end

  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end
end
