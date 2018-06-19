class CommentsController < ApplicationController
skip_before_action :authenticate_user!, except: [:destroy]
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
    raise
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@post)
    else
      render 'posts/show'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :pseudo, :post_id)
  end

end
