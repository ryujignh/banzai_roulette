class UsersController < ApplicationController
 before_filter :restrict_access
  def index
  end

  def show
    @user = User.find(1000) 

  end
end


