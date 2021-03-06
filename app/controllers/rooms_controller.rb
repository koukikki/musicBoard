class RoomsController < ApplicationController
  before_action :set_room, only: [:edit, :update, :destroy]

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

  def edit
    redirect_root
  end

  def update
    redirect_root
    @room.update(room_params)
    if @room.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    redirect_root
    @room.destroy
    redirect_to root_path
  end

  def search
    @rooms = Room.search(params[:keyword]).order('created_at DESC')
    @keyword = params[:keyword]
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:title, :artist, :date).merge(user_id: current_user.id)
  end

  def redirect_root
    redirect_to root_path unless current_user.id == @room.user_id
  end
end
