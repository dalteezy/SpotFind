class CommentsController < ApplicationController

  def index
    @comment = Comment.new
    @comments = Comment.all
  end

  def destroy
    @comment = Comment.find(params[:id])
    # Destroy Item
    @comment.destroy
    redirect_to root_path
  end

  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to :back
    else
      render 'comments/index'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end

end
