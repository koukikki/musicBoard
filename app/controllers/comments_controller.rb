class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @room = Room.find(params[:room_id])
    @comments = @room.comments.includes(:user).order('created_at DESC')
  end

  def create
    @room = Room.find(params[:room_id])
    @comment = @room.comments.new(comment_params)
    if @comment.save
      ActionCable.server.broadcast 'message_channel',
                                   content: @comment, name: @comment.user.name, time: @comment.created_at.strftime('%m月%d日%H:%M:%S'), id: @room.id
    else
      @comments = @room.comments.includes(:user).order('created_at DESC')
      render :index
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:message).merge(user_id: current_user.id, room_id: params[:room_id])
  end
end
