class LikesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:post_id])
    @like = @user.likes.new(post_id: @post.id, author_id: @user.id)

    redirect_to user_post_path(@user, @post) if @like.save
  end

  def like_params
    params.require(:likes).permit(:user_id, :post_id)
  end
end
