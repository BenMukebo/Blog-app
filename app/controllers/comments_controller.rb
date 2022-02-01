class CommentsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:post_id])
    @comment = @user.comments.new(text: comment_params[:text], post_id: @post.id, author_id: @user.id)

    if @comment.save
      flash[:notice] = 'Comment created successfuly!'
      redirect_to user_post_path(@user, @post)
    else
      flash.now[:alert] = 'Failed to create Comment!!'
      render :new
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    post = comment.post
    comment.destroy!
    flash[:alert] = 'Deleted comment'
    redirect_back fallback_location: [post]
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
