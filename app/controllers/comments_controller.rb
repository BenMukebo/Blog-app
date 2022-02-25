class CommentsController < ApplicationController
  load_and_authorize_resource
  def new
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    post = Post.find(params[:post_id])
    comment = current_user.comments.build(text: params[:text])
    comment.post = post
    if comment.save
      flash[:success] = 'Your comment has been added!'
      redirect_to root_path
    else
      flash.now[:error] = 'Comment could not be added'
      render user_post_path
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
