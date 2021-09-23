class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @room = user.rooms
  end
end
