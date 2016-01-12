class InvitesController < ApplicationController

  def create
    UserMailer.invite_email(params[:email], params[:game_id]).deliver_now
    redirect_to "/games/#{params[:game_id]}"
  end

end
