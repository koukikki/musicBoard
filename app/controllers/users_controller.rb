class UsersController < ApplicationController

  def show
    
    @rooms = Room.all
    @rooms = Room.includes(:user).order("created_at DESC")
  end

end
