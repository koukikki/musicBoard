class UsersController < ApplicationController

  def show
    @user = current_user
    @rooms = Room.all
  end

end
