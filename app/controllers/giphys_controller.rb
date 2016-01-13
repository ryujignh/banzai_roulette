class GiphysController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    u = current_user
    u.facebook.put_wall_post("I lost a game!", {"link" => params[:gifurl]})
  end
end
