class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @rooms = Room.includes(:user).order('created_at DESC')
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.create(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def search
    @rooms = Room.search(params[:keyword])
    @keyword = params[:keyword]
  end

  private

  def room_params
    params.require(:room).permit(:title, :artist, :date).merge(user_id: current_user.id)
  end
end
