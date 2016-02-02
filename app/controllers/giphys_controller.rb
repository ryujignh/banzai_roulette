class GiphysController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @user = current_user
    @user.facebook.put_wall_post("", {"link" => params[:gifurl]})
  end

  def show
    
  end
end
