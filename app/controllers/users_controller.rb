class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @rooms = user.rooms.order('created_at DESC')
  end
end
