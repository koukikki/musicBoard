class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @room = Room.find(params[:room_id])
  end

end
